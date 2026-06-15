/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab/cabbit	//Technically mudcrab subtype, it's a rabbit though. Shrimpler that way.
	name = "cabbit"
	desc = "A cabbit, a particular favorite of local fauna; both as a pet and as a tasty meal."
	icon = 'icons/roguetown/mob/cabbit.dmi'
	icon_state = "cabbit"
	icon_living = "cabbit"
	icon_dead = "cabbit_dead"
	remains_type = /obj/effect/decal/remains/cabbit
	speak = list("Meow!", "Chk!", "Purr!", "Chrr!")
	speak_emote = list("chirrups", "meows")
	faction = list("cabbits")	//Snowflake code
	emote_hear = list("meows.", "clucks.")
	STASPD = 16
	emote_see = list("brings their ears alert.", "scratches their ear with a hindleg.")
	botched_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/rabbit = 1)
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/rabbit = 1,
							/obj/item/alch/sinew = 1,
							/obj/item/alch/bone = 1,
							/obj/item/natural/fur/rabbit = 1)
	perfect_butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat/rabbit = 2,
							/obj/item/alch/sinew = 1,
							/obj/item/alch/bone = 1,
							/obj/item/natural/fur/rabbit = 1,
							/obj/item/natural/rabbitsfoot = 1)	//Rare rabbits foot for luck charm.
	ai_controller = /datum/ai_controller/cabbit

/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab/cabbit/get_sound(input)
	switch(input)
		if("aggro")
			return pick('sound/vo/mobs/rabbit/rabbit_alert.ogg')
		if("pain")
			return pick('sound/vo/mobs/rabbit/rabbit_pain1.ogg', 'sound/vo/mobs/rabbit/rabbit_pain2.ogg')
		if("death")
			return pick('sound/vo/mobs/rabbit/rabbit_death.ogg')

/obj/effect/decal/remains/cabbit
	name = "remains"
	gender = PLURAL
	icon = 'icons/roguetown/mob/cabbit.dmi'
	icon_state = "cabbit_remains"

/datum/ai_planning_subtree/cabbit_panic
	/// Range within which the cabbit should panic and flee
	var/panic_range = 7

/datum/ai_planning_subtree/cabbit_panic/SelectBehaviors(datum/ai_controller/controller, seconds_per_tick)
	var/mob/living/simple_animal/pawn = controller.pawn

	// Always look for nearby creatures to flee from
	var/list/nearby_creatures = hearers(panic_range, pawn) - pawn
	var/closest_threat = null
	var/closest_dist = 999

	for(var/atom/movable/A in nearby_creatures)
		if(isliving(A))
			var/mob/living/threat = A
			if(threat.stat == CONSCIOUS)  // Only fear living creatures
				var/dist = get_dist(pawn, threat)
				if(dist < closest_dist)
					closest_threat = threat
					closest_dist = dist

	// If we found a threat, queue the flee behavior
	if(closest_threat)
		controller.set_blackboard_key(BB_BASIC_MOB_CURRENT_TARGET, closest_threat)
		controller.queue_behavior(/datum/ai_behavior/run_away_from_target, BB_BASIC_MOB_CURRENT_TARGET)
		return SUBTREE_RETURN_FINISH_PLANNING

	// No threats, stop fleeing
	controller.clear_blackboard_key(BB_BASIC_MOB_CURRENT_TARGET)
	return

/datum/ai_controller/cabbit
	movement_delay = 0.4 SECONDS

	ai_movement = /datum/ai_movement/astar

	blackboard = list(
		BB_TARGETTING_DATUM = new /datum/targetting_datum/basic()
	)

	planning_subtrees = list(
		/datum/ai_planning_subtree/cabbit_panic,  // Panic and flee from ALL creatures first!
	)

	idle_behavior = /datum/idle_behavior/idle_random_walk
