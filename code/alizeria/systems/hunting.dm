/obj/effect/hunting_track
	name = "animal track"
	desc = " учка возможных следов от животного."
	icon = 'icons/roguetown/alizeria/hunting.dmi'
	icon_state = "hunt1"
	density = FALSE
	anchored = TRUE
	layer = BELOW_MOB_LAYER

	var/examination_time = 150 // 15 секунд в тиках (1 секунда = 10 тиков)
	var/perception_difficulty = 10 // базова€ сложность воспри€ти€
	var/success_chance = 50 // шанс успеха при воспри€тии 10
	var/spawn_distance = 20 // рассто€ние спауна животного
	var/list/possible_animals = list(
		/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab/cabbit,
		/mob/living/simple_animal/hostile/retaliate/rogue/direbear,
		/mob/living/simple_animal/hostile/retaliate/rogue/fox,
		/mob/living/simple_animal/hostile/retaliate/rogue/goat,
		/mob/living/simple_animal/hostile/retaliate/rogue/goatmale,
		/mob/living/simple_animal/hostile/retaliate/rogue/saiga,
		/mob/living/simple_animal/hostile/retaliate/rogue/wolf_undead,
		/mob/living/simple_animal/hostile/rogue/skeleton,
		/mob/living/simple_animal/pet/familiar/chicken_black,
		/mob/living/carbon/human/species/goblin/npc/ambush/moon,
		/mob/living/simple_animal/hostile/retaliate/rogue/saiga/deer,
		/mob/living/simple_animal/hostile/retaliate/rogue/saiga/doe,
		/mob/living/simple_animal/hostile/retaliate/rogue/saiga,
		/mob/living/simple_animal/hostile/retaliate/rogue/saiga/saigabuck,
		/mob/living/simple_animal/hostile/retaliate/rogue/wolf
	)

/obj/effect/hunting_track/Initialize(mapload)
	. = ..()
	// –андомный стейт спрайта
	icon_state = pick("hunt1", "hunt2", "hunt3")

/obj/effect/hunting_track/examine(mob/user)
	. = ..()
	if(!isliving(user))
		return
	// ѕоказываем иконку обнаружени€ следа
	found_ping(get_turf(src), user.client, "hunting")

/obj/effect/hunting_track/attack_hand(mob/living/user)
	if(!isliving(user))
		return

	// ѕровер€ем, находитс€ ли пользователь в режиме скрытности
	if(user.m_intent != MOVE_INTENT_SNEAK && user.stat != DEAD)
		user.visible_message("[user] начинает осматривать [src].")

	// ѕоказываем прогресс-бар осмотра
	if(!do_after(user, examination_time, target = src))
		to_chat(user, span_notice("я перестаю осматривать следы."))
		return

	// ѕроверка воспри€ти€
	var/perception_check = user.STAPER
	if(user.mind)
		perception_check += user.get_skill_level(/datum/skill/misc/tracking) * 2

	// Ѕазовый шанс 50% при воспри€тии 10
	var/difficulty_modifier = (perception_check - perception_difficulty) * 5
	var/final_chance = clamp(success_chance + difficulty_modifier, 10, 90)

	if(prob(final_chance))
		// ”спешна€ проверка - спаун животного
		to_chat(user, span_notice("я вз€л след!"))
		spawn_hunted_animal(user)
	else
		// ѕровал проверки
		to_chat(user, span_notice("Ќет, похоже животное слишком далеко ушло..."))

	// ”дал€ем след в любом случае
	qdel(src)

/obj/effect/hunting_track/proc/spawn_hunted_animal(mob/living/user)
	if(!user)
		return

	var/turf/user_turf = get_turf(user)
	if(!user_turf)
		return

	// »щем свободное место в радиусе spawn_distance тайлов
	var/list/possible_turfs = list()
	for(var/turf/T in range(spawn_distance, user_turf))
		if(!T.density && !isclosedturf(T))
			// ѕровер€ем, что это не одна и та же локаци€
			// ѕровер€ем, нет ли уже мобов на этом тайле
			var/has_mob = FALSE
			for(var/mob/M in T)
				if(isliving(M))
					has_mob = TRUE
					break
			if(!has_mob)
				possible_turfs += T

	if(!possible_turfs.len)
		to_chat(user, span_warning("Ќет, здесь не может быть дичи..."))
		return

	// ¬ыбираем рандомный тайл дл€ спауна
	var/turf/spawn_turf = pick(possible_turfs)

	// —паун рандомного животного
	var/animal_type = pick(possible_animals)
	var/mob/living/simple_animal/hostile/new_animal = new animal_type(spawn_turf)

	if(new_animal)
		// ќпредел€ем направление до по€вившегос€ животного
		var/direction = get_dir(user_turf, spawn_turf)
		var/direction_name = get_direction_name(direction)

		// ѕоказываем подсказку игроку
		user.visible_message(span_notice("[user] кого-то слышит [direction_name]!"))
		to_chat(user, span_warning("„то-то слышно [direction_name]!"))

/obj/effect/hunting_track/proc/get_direction_name(direction)
	switch(direction)
		if(NORTH)
			return "с севера"
		if(SOUTH)
			return "с юга"
		if(EAST)
			return "с востока"
		if(WEST)
			return "с запада"
		if(NORTHEAST)
			return "с северо-востока"
		if(NORTHWEST)
			return "с северо-запада"
		if(SOUTHEAST)
			return "с юго-востока"
		if(SOUTHWEST)
			return "с юго-запада"
		else
			return "р€дом"


/obj/effect/spawner/lootdrop/roguetown/dungeon/hunting
	icon = 'icons/roguetown/alizeria/hunting.dmi'
	icon_state = "hunt2"
	alpha = 0
	loot = list(
		/obj/effect/hunting_track = 1,
		/obj/item/grown/log/tree/stick = 2  // 3 пустых слота = 75% шанс ничего не спавнитс€
	)
	lootcount = 1