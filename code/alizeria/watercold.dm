/turf/open/water/coldwater
	name = "cold water"
	desc = "Freezing cold water that chills you to the bone."
	icon = 'icons/turf/roguefloor.dmi'
	icon_state = "together"
	water_level = 2
	slowdown = 3
	wash_in = TRUE
	water_reagent = /datum/reagent/water/coldwater_toxic
	color = "#87CEEB" // Светло-голубой цвет воды

/turf/open/water/coldwater/Entered(atom/movable/AM, atom/oldLoc)
	..()
	if(isliving(AM))
		var/mob/living/L = AM
		if(!istype(oldLoc, /turf/open/water/coldwater))
			L.apply_cold_damage(TRUE)

/turf/open/water/coldwater/Exited(atom/movable/AM, atom/newLoc)
	..()
	if(isliving(AM))
		var/mob/living/L = AM
		L.apply_cold_damage(FALSE)

/mob/living/var/in_cold_water = FALSE
/mob/living/var/cold_water_damage_loop = null
/mob/living/var/cold_water_message_counter = 0

/mob/living/proc/apply_cold_damage(state)
	if(state && !in_cold_water)
		in_cold_water = TRUE
		cold_water_message_counter = 0
		cold_water_damage_loop = addtimer(CALLBACK(src, PROC_REF(cold_damage_tick)), 10, TIMER_STOPPABLE | TIMER_LOOP)
	else if(!state && in_cold_water)
		in_cold_water = FALSE
		cold_water_message_counter = 0
		if(cold_water_damage_loop)
			deltimer(cold_water_damage_loop)
			cold_water_damage_loop = null

/mob/living/proc/cold_damage_tick()
	if(!in_cold_water)
		return

	adjustBruteLoss(15)

	cold_water_message_counter++
	if(cold_water_message_counter >= 3)
		to_chat(src, span_warning("Леденящий холод пронзает мою кожу, а мои ноздри пробивает запах хладагента... С этой водой явно что-то не так."))
		cold_water_message_counter = 0

/turf/open/water/coldwater/drink_act(mob/user, mob/living/L)
	playsound(user, pick('sound/foley/waterwash (1).ogg','sound/foley/waterwash (2).ogg'), 100, FALSE)
	if(L.stat != CONSCIOUS)
		return
	if(do_after(L, 25, target = src))
		to_chat(L, span_warning("Эта вода жжёт глотку!"))
		L.visible_message(span_danger("[L] давится и кряхтит, попытавшись выпить воду!"))
		var/list/waterl = list()
		waterl[water_reagent] = 8
		var/datum/reagents/reagents = new()
		reagents.add_reagent_list(waterl)
		reagents.trans_to(L, reagents.total_volume, transfered_by = user, method = INGEST)
		playsound(user,pick('sound/items/drink_gen (1).ogg','sound/items/drink_gen (2).ogg','sound/items/drink_gen (3).ogg'), 100, TRUE)
	return

/datum/reagent/water/coldwater_toxic
	name = "Frigid Water"
	description = "Icy cold water that looks pure, but carries a deadly poison."
	taste_description = "freezing ice"
	color = "#a8d5e0c6"
	harmful = TRUE

/datum/reagent/water/coldwater_toxic/reaction_mob(mob/living/L, method=TOUCH, reac_volume)
	if(method == INGEST) // Make sure you DRANK the toxic water before giving damage
		..()

/datum/reagent/water/coldwater_toxic/on_mob_life(mob/living/carbon/M)
	..()
	// Наносим урон от яда
	M.adjustToxLoss(2)
	// Иногда вызываем дополнительные эффекты
	if(prob(15))
		M.Dizzy(2)
		M.add_nausea(8)
	// Замораживающий эффект - притупляем движения
	if(prob(20))
		M.jitteriness = min(M.jitteriness + 2, 10)