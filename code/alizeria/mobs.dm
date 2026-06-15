/mob/living/simple_animal/hostile/retaliate/rogue/boar
	icon = 'icons/roguetown/alizeria/animals.dmi'
	name = "wild boar"
	desc = "A stocky and muscular beast with coarse bristled fur and wicked tusks. Wild boars are dangerous forest dwellers, known for their aggressive nature and devastating charges."
	icon_state = "boar"
	icon_living = "boar"
	icon_dead = "boar_dead"
	gender = MALE
	emote_hear = null
	emote_see = null
	speak_chance = 1
	turns_per_move = 4
	see_in_dark = 4
	move_to_delay = 2
	base_intents = list(/datum/intent/simple/bite/boar)
	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 2, /obj/item/alch/viscera = 1, /obj/item/alch/sinew = 1, /obj/item/natural/bone = 3)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 3,
						/obj/item/natural/hide = 2,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 1,
						/obj/item/alch/viscera = 1,
						/obj/item/natural/fur = 1,
						/obj/item/natural/bone = 3)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/steak = 4,
						/obj/item/natural/hide = 2,
						/obj/item/alch/sinew = 2,
						/obj/item/alch/bone = 2,
						/obj/item/alch/viscera = 1,
						/obj/item/natural/fur = 2,
						/obj/item/natural/bone = 4)
	faction = list("boars", "zombie")
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	health = BOAR_HEALTH
	maxHealth = BOAR_HEALTH
	melee_damage_lower = 22
	melee_damage_upper = 32
	vision_range = 8
	aggro_vision_range = 10
	environment_smash = ENVIRONMENT_SMASH_NONE
	retreat_distance = 0
	minimum_distance = 0
	milkies = FALSE
	food_type = list(/obj/item/reagent_containers/food/snacks,
					//obj/item/bodypart,
					//obj/item/organ,
					/obj/item/natural/bone,
					/obj/item/natural/hide)
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	pooptype = null
	STACON = 8
	STASTR = 15
	STASPD = 10
	simple_detect_bonus = 15
	deaggroprob = 0
	defprob = 35
	del_on_deaggro = 50 SECONDS
	retreat_health = 0.25
	food = 0
	attack_sound = list('sound/vo/mobs/boar/attack (1).ogg','sound/vo/mobs/boar/attack (2).ogg','sound/vo/mobs/boar/attack (3).ogg','sound/vo/mobs/boar/attack (4).ogg')
	dodgetime = 25
	aggressive = 1
	remains_type = /obj/effect/decal/remains/bear
	eat_forever = TRUE
	knockdown_chance = 30 // 30% chance to knockdown on attack

	AIStatus = AI_OFF
	can_have_ai = FALSE
	ai_controller = /datum/ai_controller/boar
	melee_cooldown = BOAR_ATTACK_SPEED

/obj/effect/decal/remains/boar
	name = "remains"
	desc = "Whether by starvation, disease, inter-pack conflict, or an unlucky encounter with a predator, this boar has met its end."
	gender = PLURAL
	icon_state = "bones"
	icon = 'icons/roguetown/mob/monster/direbear.dmi'

/mob/living/simple_animal/hostile/retaliate/rogue/boar/Initialize()
	. = ..()
	AddElement(/datum/element/ai_retaliate)
	AddElement(/datum/element/ai_flee_while_injured, 0.5, 0.3)
	gender = MALE
	if(prob(40))
		gender = FEMALE
	update_icon()
	ai_controller.set_blackboard_key(BB_BASIC_FOODS, food_type)

/mob/living/simple_animal/hostile/retaliate/rogue/boar/death(gibbed)
	..()
	update_icon()
	if(!QDELETED(src))
		src.AddComponent(/datum/component/deadite_animal_reanimation)

/mob/living/simple_animal/hostile/retaliate/rogue/boar/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/boar/aggro (1).ogg','sound/vo/mobs/boar/aggro (2).ogg','sound/vo/mobs/boar/aggro (3).ogg')
		if("pain")
			return pick('sound/vo/mobs/boar/pain (1).ogg','sound/vo/mobs/boar/pain (2).ogg','sound/vo/mobs/boar/pain (3).ogg')
		if("death")
			return pick('sound/vo/mobs/boar/death (1).ogg','sound/vo/mobs/boar/death (2).ogg','sound/vo/mobs/boar/death (3).ogg','sound/vo/mobs/boar/death (4).ogg')
		if("idle")
			return pick('sound/vo/mobs/boar/idle (1).ogg','sound/vo/mobs/boar/idle (2).ogg','sound/vo/mobs/boar/idle (3).ogg')
		if("cidle")
			return pick('sound/vo/mobs/boar/snort (1).ogg','sound/vo/mobs/boar/snort (2).ogg','sound/vo/mobs/boar/snort (3).ogg','sound/vo/mobs/boar/snort (4).ogg','sound/vo/mobs/boar/snort (5).ogg')

/mob/living/simple_animal/hostile/retaliate/rogue/boar/taunted(mob/user)
	emote("aggro")
	Retaliate()
	GiveTarget(user)
	return

/mob/living/simple_animal/hostile/retaliate/rogue/boar/Life()
	..()
	if(pulledby)
		Retaliate()
		GiveTarget(pulledby)

/mob/living/simple_animal/hostile/retaliate/rogue/boar/simple_limb_hit(zone)
	if(!zone)
		return ""
	switch(zone)
		if(BODY_ZONE_PRECISE_R_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_L_EYE)
			return "head"
		if(BODY_ZONE_PRECISE_NOSE)
			return "snout"
		if(BODY_ZONE_PRECISE_MOUTH)
			return "snout"
		if(BODY_ZONE_PRECISE_SKULL)
			return "head"
		if(BODY_ZONE_PRECISE_EARS)
			return "head"
		if(BODY_ZONE_PRECISE_NECK)
			return "neck"
		if(BODY_ZONE_PRECISE_L_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_R_HAND)
			return "foreleg"
		if(BODY_ZONE_PRECISE_L_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_R_FOOT)
			return "leg"
		if(BODY_ZONE_PRECISE_STOMACH)
			return "body"
		if(BODY_ZONE_PRECISE_GROIN)
			return "rump"
		if(BODY_ZONE_HEAD)
			return "head"
		if(BODY_ZONE_R_LEG)
			return "leg"
		if(BODY_ZONE_L_LEG)
			return "leg"
		if(BODY_ZONE_R_ARM)
			return "foreleg"
		if(BODY_ZONE_L_ARM)
			return "foreleg"
	return ..()

/mob/living/simple_animal/hostile/retaliate/rogue/boar/UnarmedAttack(atom/A)
	. = ..()
	// 30% chance to knockdown target on successful attack
	if(. && isliving(A) && prob(knockdown_chance))
		var/mob/living/target = A
		target.apply_knockdown(50) // Knockdown duration in deciseconds

/datum/intent/simple/bite/boar
	clickcd = BOAR_ATTACK_SPEED
