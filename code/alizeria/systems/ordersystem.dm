// GOLDFACE ORDERS SYSTEM
// Система заказов для торгового аппарата GOLDFACE

/datum/goldface_order
	var/order_id
	var/required_item_type
	var/required_item_name
	var/payment_amount
	var/required_quantity = 1
	var/spawn_time = 0
	var/order_duration = 0

/datum/goldface_order/New(id, item_type, item_name, payment, quantity = 1)
	order_id = id
	required_item_type = item_type
	required_item_name = item_name
	payment_amount = payment
	required_quantity = quantity
	spawn_time = world.time
	order_duration = rand(5 MINUTES, 25 MINUTES)

/proc/get_order_time_left(datum/goldface_order/order)
	if(!order)
		return 0
	var/time_elapsed = world.time - order.spawn_time
	var/time_left = order.order_duration - time_elapsed
	return max(0, time_left)

// ===== СИСТЕМА РЕПУТАЦИИ =====

GLOBAL_LIST_EMPTY(goldface_player_reputation)
GLOBAL_VAR(goldface_best_player)
GLOBAL_VAR(goldface_best_reputation)

/proc/get_player_reputation(mob/living/carbon/human/player)
	if(!player || !player.ckey)
		return 0
	if(!GLOB.goldface_player_reputation[player.ckey])
		GLOB.goldface_player_reputation[player.ckey] = 0
	return GLOB.goldface_player_reputation[player.ckey]

/proc/add_player_reputation(mob/living/carbon/human/player, amount)
	if(!player || !player.ckey)
		return
	var/current_rep = get_player_reputation(player)
	GLOB.goldface_player_reputation[player.ckey] = current_rep + amount
	to_chat(player, span_notice("Репутация увеличена на [amount]. Всего: [GLOB.goldface_player_reputation[player.ckey]]"))

	// Проверяем, является ли это новым максимумом
	if(GLOB.goldface_player_reputation[player.ckey] > GLOB.goldface_best_reputation)
		GLOB.goldface_best_reputation = GLOB.goldface_player_reputation[player.ckey]
		GLOB.goldface_best_player = player.real_name

/proc/calculate_order_payment(payment, reputation)
	// 0 репутация = 0.5 награды
	// 10 репутация = 2 награды
	// Линейная интерполяция: 0.5 + (reputation / 10) * 1.5
	var/multiplier = 0.5 + (reputation / 10) * 1.5
	return round(payment * multiplier)

// Список всех доступных заказов (пул)
GLOBAL_LIST_EMPTY(goldface_orders_pool)

/proc/init_goldface_orders_pool()
	if(!GLOB.goldface_orders_pool)
		GLOB.goldface_orders_pool = list()

	GLOB.goldface_orders_pool += list(
		new /datum/goldface_order(1, /obj/item/natural/hide, "Шкуры животного", 60, 3),
		new /datum/goldface_order(2, /obj/item/alch/rosa, "Розы", 45, 2),
		new /datum/goldface_order(3, /obj/item/alch/salvia, "Сальвия", 50, 3),
		new /datum/goldface_order(4, /obj/item/natural/bone, "Кости", 80, 5),
		new /datum/goldface_order(5, /obj/item/grown/log/tree, "Брёвна", 80, 5),
		new /datum/goldface_order(6, /obj/item/ammo_casing/caseless/rogue/pyla, "Пистольные пули", 100, 10),
		new /datum/goldface_order(7, /obj/item/ammo_casing/caseless/rogue/mpylaalt, "Винтовочные пули", 150, 10),
		new /datum/goldface_order(8, /obj/item/ammo_casing/caseless/rogue/mpyla, "Продвинутые винтовочные пули", 200, 10),
		new /datum/goldface_order(9, /obj/item/ingot/iron, "Железный слиток", 60, 2),
		new /datum/goldface_order(10, /obj/item/ingot/steel, "Стальной слиток", 45, 1),
		new /datum/goldface_order(11, /obj/item/reagent_containers/food/snacks/grown/apple, "Яблоки", 90, 10),
		new /datum/goldface_order(12, /obj/item/ingot/blacksteel, "Слиток чёрной стали", 250, 1),
		new /datum/goldface_order(13, /obj/item/clothing/neck/roguetown/gorget, "Железный горжет", 130, 3),
		new /datum/goldface_order(14, /obj/item/reagent_containers/food/snacks/grown/wheat, "Зерно", 150, 15),
		new /datum/goldface_order(15, /obj/item/alch/urtica, "Уртика", 45, 2),
		new /datum/goldface_order(16, /obj/item/rogueore/coal, "Уголь", 80, 5),
		new /datum/goldface_order(17, /obj/item/rogueore/coal, "Уголь", 160, 10),
		new /datum/goldface_order(18, /obj/item/roguegem/diamond, "Алмаз", 1000, 1),
		new /datum/goldface_order(19, /obj/item/rogueweapon/sword/iron, "Железные мечи", 180, 3),
		new /datum/goldface_order(20, /obj/item/storage/roguebag, "Мешки", 30, 5),
		new /datum/goldface_order(21, /obj/item/reagent_containers/food/snacks/grown/potato/rogue, "Картофель", 80, 10),
		new /datum/goldface_order(22, /obj/item/roguegear, "Шестерёнки", 60, 3),
		new /datum/goldface_order(23, /obj/item/snowball, "Снежки", 35, 15),
		new /datum/goldface_order(24, /obj/item/rogueweapon/pitchfork, "Вилы", 80, 4),
	)

// Расширяем GOLDFACE функциональностью заказов
/obj/structure/roguemachine/goldface
	var/list/active_orders = list()
	var/orders_initialized = FALSE

/obj/structure/roguemachine/goldface/Initialize()
	. = ..()
	update_icon()
	// Инициализируем пул заказов один раз для всего мира
	if(!GLOB.goldface_orders_pool || !GLOB.goldface_orders_pool.len)
		init_goldface_orders_pool()

	// Каждый аппарат имеет свои активные заказы
	if(!orders_initialized)
		generate_new_orders()
		orders_initialized = TRUE

	// Добавляем "Заказы" в список категорий
	if(!("Заказы" in categories_gamer))
		categories_gamer += "Заказы"

/obj/structure/roguemachine/goldface/proc/generate_new_orders()
	active_orders = list()
	var/order_count = 3 // Всегда 3 активных заказа
	for(var/i = 1, i <= order_count, i++)
		var/datum/goldface_order/picked = pick(GLOB.goldface_orders_pool)
		// Создаём копию заказа с новым таймером
		var/datum/goldface_order/new_order = new /datum/goldface_order(
			picked.order_id + rand(100, 999),
			picked.required_item_type,
			picked.required_item_name,
			picked.payment_amount,
			picked.required_quantity
		)
		active_orders += new_order

/obj/structure/roguemachine/goldface/proc/check_and_refresh_orders()
	if(!active_orders || !active_orders.len)
		return

	for(var/i = active_orders.len, i >= 1, i--)
		var/datum/goldface_order/order = active_orders[i]
		var/time_left = get_order_time_left(order)
		if(time_left <= 0)
			// Заказ истёк - удаляем и генерируем новый
			active_orders.Remove(order)
			var/datum/goldface_order/picked = pick(GLOB.goldface_orders_pool)
			var/datum/goldface_order/new_order = new /datum/goldface_order(
				picked.order_id + rand(100, 999),
				picked.required_item_type,
				picked.required_item_name,
				picked.payment_amount,
				picked.required_quantity
			)
			active_orders += new_order

// Перехватываем Topic для обработки заказов
/obj/structure/roguemachine/goldface/Topic(href, href_list)
	// Проверяем и обновляем заказы перед открытием интерфейса
	check_and_refresh_orders()

	// Обработка заказов
	if(href_list["view_orders"])
		return show_orders_interface(usr)

	if(href_list["submit_order"])
		var/order_id = text2num(href_list["submit_order"])
		return submit_order(usr, order_id)

	// Оригинальные обработчики
	. = ..()

/obj/structure/roguemachine/goldface/proc/show_orders_interface(mob/user)
	if(!ishuman(user))
		return

	user.changeNext_move(CLICK_CD_INTENTCAP)
	playsound(loc, 'sound/misc/gold_menu.ogg', 100, FALSE, -1)

	var/mob/living/carbon/human/H = user
	var/player_reputation = get_player_reputation(H)

	var/contents = "<center><b>ЗАКАЗЫ</b><BR>"
	contents += "Ваша репутация: <b style='color: #FFD700;'>[player_reputation]</b><BR>"

	// Отображаем лучшего исполнителя
	if(GLOB.goldface_best_player)
		contents += "Лучший исполнитель: <b style='color: #FFD700;'>[GLOB.goldface_best_player]</b> ([GLOB.goldface_best_reputation])<BR>"
	else
		contents += "Лучший исполнитель: <b style='color: #FFD700;'>Никто</b><BR>"

	contents += "<BR></center>"

	if(!active_orders || !active_orders.len)
		contents += "<center>Заказов больше нет!</center>"
	else
		for(var/datum/goldface_order/order in active_orders)
			var/time_left = get_order_time_left(order)
			var/minutes_left = round(time_left / (1 MINUTES), 0.1)
			var/item_text = order.required_quantity > 1 ? "[order.required_item_name] (x[order.required_quantity])" : order.required_item_name

			// Рассчитываем платёж с учётом репутации
			var/final_payment = calculate_order_payment(order.payment_amount, player_reputation)

			contents += "<div style='border: 1px solid #999; padding: 10px; margin: 5px; background: #1a1a1a;'>"
			contents += "<b>Заказ #[order.order_id]</b> <small style='color: #FFD700;'>([minutes_left] мин.)</small><BR>"
			contents += "Требуется: [item_text]<BR>"
			contents += "Оплата: <b>[final_payment]</b> мамонов"
			if(final_payment != order.payment_amount)
				contents += " <small style='color: #90EE90;'>(базовая: [order.payment_amount])</small>"
			contents += "<BR>"
			contents += "<a href='?src=[REF(src)];submit_order=[order.order_id]'><b>СДАТЬ ЗАКАЗ</b></a>"
			contents += "</div><BR>"

	contents += "<center><a href='?src=[REF(src)];changecat=1'>\[НАЗАД\]</a></center>"

	var/datum/browser/popup = new(user, "VENDORTHING", "", 500, 800)
	popup.set_content(contents)
	popup.open()
	return TRUE

/obj/structure/roguemachine/goldface/proc/submit_order(mob/user, order_id)
	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user
	if(!active_orders || !active_orders.len)
		to_chat(user, span_danger("Нет доступных заказов!"))
		return

	var/datum/goldface_order/order = null
	for(var/datum/goldface_order/O in active_orders)
		if(O.order_id == order_id)
			order = O
			break

	if(!order)
		to_chat(user, span_danger("Заказ не найден или истёк срок действия!"))
		playsound(loc, 'sound/misc/machineno.ogg', 100, FALSE, -1)
		return show_orders_interface(user)

	// Проверяем срок действия заказа
	var/time_left = get_order_time_left(order)
	if(time_left <= 0)
		to_chat(user, span_danger("Этот заказ больше не действителен!"))
		playsound(loc, 'sound/misc/machineno.ogg', 100, FALSE, -1)
		active_orders -= order
		return show_orders_interface(user)

	// Проверяем наличие нужного количества предметов на тайле
	var/items_found = 0
	var/list/found_items = list()

	for(var/obj/item/I in get_turf(src))
		if(istype(I, order.required_item_type))
			found_items += I
			items_found++
			if(items_found >= order.required_quantity)
				break

	if(items_found < order.required_quantity)
		to_chat(user, span_danger("Перед аппаратом нету нужных предметов для сдачи заказа... (нужно [order.required_quantity], найдено [items_found])"))
		playsound(loc, 'sound/misc/machineno.ogg', 100, FALSE, -1)
		return show_orders_interface(user)

	// Выполняем заказ - удаляем предметы
	for(var/obj/item/I in found_items)
		qdel(I)

	// Получаем текущую репутацию игрока
	var/player_reputation = get_player_reputation(H)

	// Рассчитываем платёж с учётом репутации
	var/final_payment = calculate_order_payment(order.payment_amount, player_reputation)

	// Рассчитываем награду за репутацию
	var/reputation_gain = player_reputation >= 5 ? 0.5 : 1

	// Выплачиваем награду
	budget2change(final_payment, user)

	// Добавляем репутацию
	add_player_reputation(H, reputation_gain)

	// Сообщения игроку
	to_chat(user, span_notice("Заказ успешно выполнен! Награда: [final_payment] мамонов"))
	playsound(loc, 'sound/misc/gold_menu.ogg', 100, FALSE, -1)
	src.say("Заказ выполнен! Награда переведена!")

	// Удаляем выполненный заказ и генерируем новый
	active_orders -= order
	var/datum/goldface_order/picked = pick(GLOB.goldface_orders_pool)
	var/datum/goldface_order/new_order = new /datum/goldface_order(
		picked.order_id + rand(100, 999),
		picked.required_item_type,
		picked.required_item_name,
		picked.payment_amount,
		picked.required_quantity
	)
	active_orders += new_order

	return show_orders_interface(user)

// Переопределяем attack_hand для обработки категории "Заказы"
/obj/structure/roguemachine/goldface/attack_hand(mob/living/user)
	. = ..()
	if(.)
		return
	if(!ishuman(user))
		return
	if(locked && !is_public)
		to_chat(user, span_warning("It's locked. Of course."))
		return
	user.changeNext_move(CLICK_CD_INTENTCAP)
	playsound(loc, 'sound/misc/gold_menu.ogg', 100, FALSE, -1)
	var/canread = user.can_read(src, TRUE)
	var/contents
	if(is_public)
		contents = "<center>SILVERFACE - In the name of greed.<BR>"
	else
		contents = "<center>GOLDFACE - In the name of greed.<BR>"
	contents += "<a href='?src=[REF(src)];change=1'>MAMMON LOADED:</a> [budget]<BR>"

	var/mob/living/carbon/human/H = user
	if(H.job in list("Merchant","Shophand"))
		if(!is_public)
			if(canread)
				contents += "<a href='?src=[REF(src)];secrets=1'>Secrets</a>"
			else
				contents += "<a href='?src=[REF(src)];secrets=1'>[stars("Secrets")]</a>"
		else
			contents += "<a href='?src=[REF(src)];withdrawgain=1'>Stored Profits:</a> [stored_profit]<BR>"

	contents += "</center><BR>"

	if(current_cat == "1")
		contents += "<table style='width: 100%' line-height: 20px;'>"
		for(var/i = 1, i <= categories.len, i++)
			contents += "<tr>"
			contents += "<td style='width: 50%; text-align: center;'>\
				<a href='?src=[REF(src)];changecat=[categories[i]]'>[categories[i]]</a>\
				</td>"
			if(i <= categories_gamer.len)
				contents += "<td style='width: 50%; text-align: center;'>\
					<a href='?src=[REF(src)];changecat=[categories_gamer[i]]'>[categories_gamer[i]]</a>\
				</td>"
			contents += "</tr>"
		contents += "</table>"
	else if(current_cat == "Заказы")
		// Если выбрана категория заказов, показываем интерфейс заказов
		return show_orders_interface(user)
	else
		contents += "<center>[current_cat]<BR></center>"
		contents += "<center><a href='?src=[REF(src)];changecat=1'>\[RETURN\]</a><BR><BR></center>"
		var/list/pax = list()
		for(var/pack in SSmerchant.supply_packs)
			var/datum/supply_pack/PA = SSmerchant.supply_packs[pack]
			if(PA.not_in_public && is_public)
				continue
			if(PA.group == current_cat)
				pax += PA
		for(var/datum/supply_pack/PA in sortNames(pax))
			var/costy = round(PA.cost + PA.cost * extra_fee)
			if(is_public)
				costy = costy + round(PA.cost * PA.mandated_public_profit)
			var/quantified_name = PA.no_name_quantity ? PA.name : "[PA.name] [PA.contains.len > 1?"x[PA.contains.len]":""]"
			if(is_public && locked)
				contents += "[quantified_name]<BR>"
			else
				contents += "[quantified_name] - ([costy])<a href='?src=[REF(src)];buy=[PA.type]'>BUY</a><BR>"

	if(!canread)
		contents = stars(contents)

	var/datum/browser/popup = new(user, "VENDORTHING", "", 500, 800)
	popup.set_content(contents)
	popup.open()