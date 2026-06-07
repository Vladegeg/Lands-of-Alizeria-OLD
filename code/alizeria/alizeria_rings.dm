/obj/item/clothing/ring/fireproof
	name = "кольцо огнестойкости"
	icon_state = "antiflame"
	desc = "Причудливое кольцо, которое способно полностью защитить владельца от огня."
	sellprice = 200
	var/active = FALSE

/obj/item/clothing/ring/fireproof/equipped(mob/living/user, slot)
	. = ..()
	if(active)
		return
	else if(slot == SLOT_RING)
		active = TRUE
		ADD_TRAIT(user, TRAIT_NOFIRE, "[type]")
		to_chat(user, span_notice("Я чувствую какую-то тёплую защитную ауру...."))
	return

/obj/item/clothing/ring/fireproof/dropped(mob/living/user)
	..()
	if(active)
		active = FALSE
		REMOVE_TRAIT(user, TRAIT_NOFIRE, "[type]")
		to_chat(user, span_notice("Защитная аура спадает с меня."))
	return


/////////////////////////////////////////

/obj/item/clothing/ring/second_chance
	name = "кольцо второго шанса"
	icon_state = "secondlife"
	desc = "Волшебное кольцо, пульсирующее мягким светом. Имеет множество побочных эффектов от постоянного ношения, но тем не менее, путешественники продолжают им пользоваться."
	sellprice = 300
	var/active = FALSE
	var/used = FALSE

/obj/item/clothing/ring/second_chance/equipped(mob/living/user, slot)
	. = ..()
	if(active)
		return
	else if(slot == SLOT_RING)
		active = TRUE
		used = FALSE
		RegisterSignal(user, COMSIG_LIVING_HEALTH_UPDATE, PROC_REF(check_critical))
		to_chat(user, span_notice("Кольцо согревает ваш палец. Вы чувствуете себя... защищённым."))
	return

/obj/item/clothing/ring/second_chance/dropped(mob/living/user)
	..()
	if(active)
		active = FALSE
		UnregisterSignal(user, COMSIG_LIVING_HEALTH_UPDATE)
	return

/obj/item/clothing/ring/second_chance/proc/check_critical(mob/living/user)
	if(used || QDELETED(src) || !active || QDELETED(user))
		return

	// Проверяем, впадает ли пользователь в критическое состояние
	if(user.InCritical())
		used = TRUE
		activate_rescue(user)
	return

/obj/item/clothing/ring/second_chance/proc/activate_rescue(mob/living/user)
	// Ищем landmark
	var/obj/effect/landmark/second_chance/landmark
	for(var/obj/effect/landmark/second_chance/L in GLOB.landmarks_list)
		landmark = L
		break

	if(!landmark)
		to_chat(user, span_warning("Кольцо светится, но ничего не происходит..."))
		return FALSE

	// Телепортируем
	user.visible_message(span_warning("[user] вспыхивает ярким светом и исчезает!"))
	user.forceMove(get_turf(landmark))

	// Закрываем все раны
	for(var/datum/wound/wound as anything in user.get_wounds())
		qdel(wound)

	// Полностью исцеляем
	user.fully_heal(admin_revive = FALSE, break_restraints = FALSE)

	// Восстанавливаем кровь на 50%
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		H.blood_volume = BLOOD_VOLUME_NORMAL * 0.5  // 50% от нормальной крови

	// Обновляем состояние
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		H.update_damage_overlays()
		H.update_mobility()

	user.visible_message(span_notice("[user] закрывает вспышка света, а затем пропадает."))
	to_chat(user, span_notice("Кольцо спасло вас от смерти! Все ваши раны закрыты, кровь восполнена неполностью."))
	playsound(user, 'sound/magic/heal.ogg', 100, FALSE, -1)

	active = FALSE
	UnregisterSignal(user, COMSIG_LIVING_HEALTH_UPDATE)
	qdel(src)

/obj/effect/landmark/second_chance
	name = "second_chance"
	icon_state = "generic_event"