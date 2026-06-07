/// Armor decoration/attachment storage component
/// Allows small cosmetic cloaks to be attached to armor via Shift+RightClick
/datum/component/storage/concrete/roguetown/armor_attachment
	screen_max_rows = 3
	screen_max_columns = 2
	max_w_class = WEIGHT_CLASS_GIGANTIC

	cant_hold = list(
		/obj/item/storage,
		/obj/item/rogueweapon,
		/obj/item/bomb,
		/obj/item/flashlight,
		/obj/item/recipe_book,
	)

	attack_hand_interact = FALSE
	silent = TRUE
	rustle_sound = null

	insert_preposition = "onto"
	allow_big_nesting = TRUE
	allow_nesting = TRUE
	intercept_parent_attack = FALSE
	intercept_parent_mousedrop = FALSE

/datum/component/storage/concrete/roguetown/armor_attachment/attackby(datum/source, obj/item/attacking_item, mob/user, params, storage_click)
	if(is_type_in_list(attacking_item, cant_hold))
		return FALSE
	return ..()

/datum/component/storage/concrete/roguetown/armor_attachment/update_icon()
	. = ..()
	var/obj/our_parent = real_location()
	if(ismob(our_parent.loc))
		var/mob/parent_mob = our_parent.loc
		parent_mob.update_inv_armor()

/datum/component/storage/concrete/roguetown/armor_attachment/can_be_inserted(obj/item/storing, stop_messages, mob/user, worn_check = FALSE, params, storage_click = FALSE)
	// we only want small cosmetic cloaks/capes to be addable
	if(!istype(storing, /obj/item/clothing/cloak))
		return FALSE
	// any sort of armoured item is forbidden, it's aesthetic only
	if(storing.armor?.stab > 0 || storing.armor?.blunt > 0)
		return FALSE
	// don't allow recursive nesting, it must be empty
	if(length(storing.contents))
		return FALSE
	return ..()

/obj/item/clothing/suit/roguetown/armor
	/// Type path of attachment component (null to disable)
	var/attachment_component = /datum/component/storage/concrete/roguetown/armor_attachment

/obj/item/clothing/suit/roguetown/armor/Initialize()
	. = ..()
	if(attachment_component)
		AddComponent(attachment_component)

/obj/item/clothing/suit/roguetown/armor/get_examine_name(mob/user)
	var/default_examine_name = ..()
	if(attachment_component)
		var/datum/component/storage/concrete/roguetown/our_component = GetComponent(attachment_component)
		if(length(our_component.item_to_grid_coordinates))
			var/list/examine_strings = list()
			for(var/obj/item/thing as anything in our_component.item_to_grid_coordinates)
				examine_strings += thing.get_examine_name(user)
			default_examine_name += " ([examine_strings.Join(", ")])"
	return default_examine_name

/obj/item/clothing/suit/roguetown/armor/ShiftRightClick(mob/user)
	if(attachment_component)
		var/datum/component/storage/storage_component = GetComponent(attachment_component)
		if(storage_component)
			storage_component.rmb_show(user)
			return TRUE
	return ..()

/// Build worn armor icon with any attachments visible
/obj/item/clothing/suit/roguetown/armor/build_worn_icon(default_layer = 0, default_icon_file = null, isinhands = FALSE, femaleuniform = NO_FEMALE_UNIFORM, override_state = null, female = FALSE, customi = null, sleeveindex = null, boobed_overlay = null, clip_body_parts = FALSE)
	var/mutable_appearance/standing = ..()
	// get attachment component and check if there's anything inside
	if(attachment_component)
		var/datum/component/storage/concrete/roguetown/our_component = GetComponent(attachment_component)
		if(our_component && length(our_component.item_to_grid_coordinates))
			for(var/obj/item/thing as anything in our_component.item_to_grid_coordinates)
				var/mutable_appearance/thing_appearance = thing.build_worn_icon(default_layer, default_icon_file, isinhands, femaleuniform, override_state, female, customi, sleeveindex, boobed_overlay, clip_body_parts)
				thing_appearance.appearance_flags = RESET_COLOR
				standing.add_overlay(thing_appearance)
	return standing

/obj/item/clothing/suit/roguetown/armor/update_damaged_state()
	..()
	if(ismob(loc))
		var/mob/M = loc
		M.update_inv_armor()
