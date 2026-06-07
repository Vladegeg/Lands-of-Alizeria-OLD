// Developer Cheat Spells
// Powerful spells for developers to aid in testing and debugging

/// Spell 1: Infinite Invisibility
/obj/effect/proc_holder/spell/invoked/developer_invisibility
	name = "Infinite Invisibility"
	desc = "Grants the developer infinite invisibility. Cast again to toggle it off."
	overlay_state = "invisibility"
	antimagic_allowed = TRUE
	invocation_type = "none"
	recharge_time = 0
	clothes_req = FALSE
	range = 0

	var/mob/active_user = null

/obj/effect/proc_holder/spell/invoked/developer_invisibility/Click()
	var/mob/living/user = usr
	if(!istype(user))
		return

	if(!can_cast(user))
		return

	if(active_user == user)
		// Toggle off
		deactivate_invisibility(user)
	else
		// Toggle on
		if(active_user)
			deactivate_invisibility(active_user)
		activate_invisibility(user)

/obj/effect/proc_holder/spell/invoked/developer_invisibility/proc/activate_invisibility(mob/user)
	active_user = user
	animate(user, alpha = 0, time = 1 SECONDS, easing = EASE_IN)
	// Mark this invisibility as permanent dev invisibility
	ADD_TRAIT(user, "dev_invisibility", "developer_invisibility_spell")
	user.mob_timers[MT_INVISIBILITY] = world.time + 36000000 // Effectively infinite (1000 hours in deciseconds)
	user.update_sneak_invis()
	to_chat(user, span_notice("You become invisible."))
	play_sound_for_nearby_mobs(user, 'sound/alizeria/end.ogg', 7)
	log_admin("[key_name(user)] activated infinite invisibility")

/obj/effect/proc_holder/spell/invoked/developer_invisibility/proc/deactivate_invisibility(mob/user)
	if(!user)
		return
	active_user = null
	animate(user, alpha = initial(user.alpha), time = 1 SECONDS, easing = EASE_IN)
	REMOVE_TRAIT(user, "dev_invisibility", "developer_invisibility_spell")
	user.mob_timers[MT_INVISIBILITY] = 0
	user.update_sneak_invis(reset = TRUE)
	play_sound_for_nearby_mobs(user, 'sound/alizeria/start.ogg', 7)
	to_chat(user, span_notice("You become visible again."))
	log_admin("[key_name(user)] deactivated infinite invisibility")

/obj/effect/proc_holder/spell/invoked/developer_invisibility/proc/play_sound_for_nearby_mobs(mob/user, sound_file, sound_range = 7)
	var/list/nearby = range(sound_range, user)
	for(var/atom/A in nearby)
		if(ismob(A))
			playsound(A, sound_file, 100, FALSE)

/// Spell 2: Freeze (Stun)
/obj/effect/proc_holder/spell/invoked/developer_freeze
	name = "Freeze"
	desc = "Applies infinite freeze to a target. Cast on the same target again to unfreeze them."
	overlay_state = "freeze"
	antimagic_allowed = TRUE
	invocation_type = "none"
	recharge_time = 0
	clothes_req = FALSE
	range = 7
	selection_type = "range"
	no_early_release = TRUE

	var/mob/frozen_target = null

/obj/effect/proc_holder/spell/invoked/developer_freeze/choose_targets(mob/user = usr)
	var/list/targets = list()

	for(var/mob/living/target in view_or_range(range, user, selection_type))
		if(isliving(target))
			targets += target

	if(!targets.len)
		revert_cast()
		return

	var/mob/target = input("Select target to freeze", "Freeze") as null|mob in sortNames(targets)

	if(!target)
		revert_cast()
		return

	perform(list(target), user = user)

/obj/effect/proc_holder/spell/invoked/developer_freeze/cast(list/targets, mob/user = usr)
	var/mob/target = targets[1]

	if(frozen_target == target)
		// Toggle off - unfreeze
		dev_freeze_unfreeze(target)
	else
		// Toggle on - freeze new target
		if(frozen_target)
			dev_freeze_unfreeze(frozen_target)
		dev_freeze_freeze(target, user)

	return TRUE

/obj/effect/proc_holder/spell/invoked/developer_freeze/proc/dev_freeze_freeze(mob/target, mob/user)
	if(!target)
		return

	frozen_target = target

	if(isliving(target))
		var/mob/living/L = target
		L.SetAllImmobility(INFINITY, TRUE)

	to_chat(user, span_notice("[target] is now frozen."))
	to_chat(target, span_warning("You are frozen!"))
	log_admin("[key_name(user)] froze [key_name(target)]")

/obj/effect/proc_holder/spell/invoked/developer_freeze/proc/dev_freeze_unfreeze(mob/target)
	if(!target)
		return

	if(isliving(target))
		var/mob/living/L = target
		L.SetAllImmobility(0, TRUE)
		// Remove all status effects related to immobility
		var/datum/status_effect/incapacitating/stun/S = L.IsStun()
		if(S)
			qdel(S)
		var/datum/status_effect/incapacitating/knockdown/K = L.IsKnockdown()
		if(K)
			qdel(K)
		var/datum/status_effect/incapacitating/immobilized/I = L.IsImmobilized()
		if(I)
			qdel(I)
		var/datum/status_effect/incapacitating/paralyzed/P = L.IsParalyzed()
		if(P)
			qdel(P)
		// Regenerate icons to remove the immobilized effect overlay
		if(ishuman(target))
			var/mob/living/carbon/human/H = target
			H.cut_overlays()
			H.regenerate_icons()

	to_chat(target, span_notice("You are no longer frozen."))
	log_admin("[key_name(usr)] unfroze [key_name(target)]")

	frozen_target = null

/// Spell 3: Sleep (Unconsciousness)
/obj/effect/proc_holder/spell/invoked/developer_sleep
	name = "Sleep"
	desc = "Puts a target to sleep. Cast on the same target again to wake them up."
	overlay_state = "sleep"
	antimagic_allowed = TRUE
	invocation_type = "none"
	recharge_time = 0
	clothes_req = FALSE
	range = 7
	selection_type = "range"
	no_early_release = TRUE

	var/mob/sleeping_target = null

/obj/effect/proc_holder/spell/invoked/developer_sleep/choose_targets(mob/user = usr)
	var/list/targets = list()

	for(var/mob/living/target in view_or_range(range, user, selection_type))
		if(isliving(target))
			targets += target

	if(!targets.len)
		revert_cast()
		return

	var/mob/target = input("Select target to put to sleep", "Sleep") as null|mob in sortNames(targets)

	if(!target)
		revert_cast()
		return

	perform(list(target), user = user)

/obj/effect/proc_holder/spell/invoked/developer_sleep/cast(list/targets, mob/user = usr)
	var/mob/target = targets[1]

	if(sleeping_target == target)
		// Toggle off - wake up
		dev_sleep_wake(target)
	else
		// Toggle on - put to sleep
		if(sleeping_target)
			dev_sleep_wake(sleeping_target)
		dev_sleep_sleep(target, user)

	return TRUE

/obj/effect/proc_holder/spell/invoked/developer_sleep/proc/dev_sleep_sleep(mob/target, mob/user)
	if(!target || !isliving(target))
		return

	sleeping_target = target
	var/mob/living/L = target
	L.SetSleeping(INFINITY, TRUE, TRUE)

	to_chat(user, span_notice("[target] has fallen asleep."))
	to_chat(target, span_warning("You fall asleep..."))
	log_admin("[key_name(user)] put [key_name(target)] to sleep")

/obj/effect/proc_holder/spell/invoked/developer_sleep/proc/dev_sleep_wake(mob/target)
	if(!target)
		return

	if(isliving(target))
		var/mob/living/L = target
		L.SetSleeping(0, TRUE, TRUE)
		var/datum/status_effect/incapacitating/sleeping/S = L.IsSleeping()
		if(S)
			L.remove_status_effect(S)
		L.set_resting(FALSE, TRUE)

	to_chat(target, span_notice("You wake up!"))
	log_admin("[key_name(usr)] woke up [key_name(target)]")

	sleeping_target = null

/// Spell 4: Teleport
/obj/effect/proc_holder/spell/invoked/developer_teleport
	name = "Teleport"
	desc = "Instantly teleports you to a selected location with no delay or sound effects."
	overlay_state = "teleport"
	antimagic_allowed = TRUE
	invocation_type = "none"
	recharge_time = 0
	clothes_req = FALSE
	range = -1
	selection_type = "range"
	no_early_release = FALSE

/obj/effect/proc_holder/spell/invoked/developer_teleport/choose_targets(mob/user = usr)
	var/turf/target_turf = input("Select location to teleport to", "Teleport") as null|turf

	if(!target_turf)
		revert_cast()
		return

	perform(list(target_turf), user = user)

/obj/effect/proc_holder/spell/invoked/developer_teleport/cast(list/targets, mob/user = usr)
	var/atom/target = targets[1]
	var/turf/target_turf = get_turf(target)

	if(!target_turf)
		to_chat(user, span_warning("Invalid teleport destination."))
		return FALSE

	user.forceMove(target_turf)

	to_chat(user, span_notice("You teleport to [target_turf]."))
	log_admin("[key_name(user)] teleported to [target_turf]")
	return TRUE