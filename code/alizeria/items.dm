/obj/item/clothing/suit/roguetown/armor/alizeria/jandarms/chief/armor
	slot_flags = ITEM_SLOT_ARMOR
	name = "marshall gendarmes dress"
	desc = "Укреплённое, роскошное платье маршалла жандармов. Красиво и практично."
	body_parts_covered = COVERAGE_VEST
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "chiefarmor"
	item_state = "chiefarmor"
	armor = ARMOR_CUIRASS
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM
	smelt_bar_num = 2
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sellprice = 120
	armor = ARMOR_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	blade_dulling = DULLING_BASHCHOP
	armor_class = ARMOR_CLASS_LIGHT
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/armor/alizeria/jandarms/patrol/armor
	slot_flags = ITEM_SLOT_ARMOR
	name = "gendarmes' patrol skirt"
	desc = "Простая юбка жандармерии, с повешанной стальной кирасой. Используется патрульными."
	body_parts_covered = COVERAGE_VEST
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "patrol"
	item_state = "patrol"
	armor = ARMOR_CUIRASS
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM
	smelt_bar_num = 2
	boobed_detail = FALSE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/library
	name = "librarian's dress"
	desc = "Простенькое платье библиотекаря. Кажется местами чудом сохраняется пыль, как не пытаться её убирать."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "library"
	item_state = "library"
	boobed = TRUE
	allowed_sex = list(FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/armor/gambeson/heavy/alizeria/jandarms/jandarm
	name = "the uniform of a gendarme"
	desc = "Строгая и практичная униформа жандармов. Покрыта лёгкими, но прочными пластинами."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "jandararmor"
	item_state = "jandararmor"
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_CHOP)
	armor = ARMOR_PADDED_GOOD
	sellprice = 50
	sewrepair = TRUE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/jandarms/instructor
	name = "instructor's vest"
	desc = "Качественный жилет инструктора жандармерии. Красив, но никак не защищает владельца."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "instructor"
	item_state = "instructor"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/jandarms/studyone
	name = "academic's robe"
	desc = "Роба учеников академии жандармов. Выглядит весьма дёшево."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "studyone"
	item_state = "studyone"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/jandarms/studytwo
	name = "academician's vest"
	desc = "Жилет учеников академии жандармов. Выглядит весьма дёшево."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "studytwo"
	item_state = "studytwo"
	boobed = TRUE
	allowed_sex = list(FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/under/roguetown/tights/alizeria/jandarms/instructor
	name = "officer's trousers"
	desc = "Строгие брюки офицера жандармерии."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "inspants"
	item_state = "inspants"
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/under/roguetown/tights/alizeria/jandarms/studypants
	name = "academician's trousers"
	desc = "Обычные брюки академика жандармерии. Кажется проделать им дырку возможно даже пальцем."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "studypants"
	item_state = "studypants"
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/gloves/roguetown/alizeria/noblegloves
	name = "noble gloves"
	desc = "Роскошные перчатки, которые часто носят дворяне. Тяжело стираются."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "noblegloves"
	item_state = "noblegloves"
	armor = ARMOR_GLOVES_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	max_integrity = 100
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	unarmed_bonus = 1.1
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/gloves/roguetown/alizeria/noblegloves/alt
	icon_state = "noblegloves2"
	item_state = "noblegloves2"

/obj/item/clothing/cloak/jandarms/cief
	name = "coat of the marshall"
	desc = "Роскошный плащ, что хорошо греет владельца."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ciefcoat"
	item_state = "ciefcoat"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "ciefcoat"
	slot_flags = ITEM_SLOT_CLOAK
	sellprice = 50
	nodismemsleeves = TRUE
	slot_flags = ITEM_SLOT_CLOAK
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)

/obj/item/clothing/head/roguetown/helmet/jandarms/jandarm
	name = "helmet of a gendarme"
	desc = "Обычный шлем кавалериста. В меру защищает голову и уши носителя."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "janhelmet"
	item_state = "janhelmet"
	max_integrity = 215
	body_parts_covered = HEAD|HAIR|EARS
	armor = ARMOR_HEAD_HELMET

/obj/item/clothing/head/roguetown/jandarms/cief
	name = "cap of gendarmes"
	desc = "В меру строгая фуражка шефа жандармов."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ciefhat"
	item_state = "ciefhat"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/jandarms/cief
	name = "luxury boots"
	//dropshrink = 0.75
	desc = "Роскошные сапоги шефа жандармов. Ими убили не одного смерда."
	gender = PLURAL
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ciefboots"
	item_state = "ciefboots"
	sewrepair = TRUE
	armor = ARMOR_BOOTS_BAD
	allowed_sex = list(FEMALE)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured
	color = null

/obj/item/clothing/cloak/jandarms/jandarm
	name = "the cloak of the gendarmes"
	desc = "Качественный плащ, способный уберечь владельца от дождя и грязи."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "jancoat"
	item_state = "jancoat"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "jancoat"
	slot_flags = ITEM_SLOT_CLOAK
	sellprice = 50
	nodismemsleeves = TRUE
	slot_flags = ITEM_SLOT_CLOAK
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/suit/roguetown/armor/leather/jacket/alizeria/necromist/coat
	name = "necromist coat"
	desc = "Мрачное пальто из странной на ощуп кожи."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "necromistcoat"
	item_state = "necromistcoat"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/priarmor
	name = "priestess's robe"
	desc = "Роскошная роба жрицы. Выглядит в меру богато, и в меру бедно."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "priarmor"
	item_state = "priarmor"
	boobed = TRUE
	allowed_sex = list(FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/shoes/roguetown/boots/jandarms/priboots
	name = "priestess's boots"
	//dropshrink = 0.75
	desc = "Роскошные сапоги жрицы. Чудом не пачкаются в грязи."
	gender = PLURAL
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "priboots"
	item_state = "priboots"
	sewrepair = TRUE
	armor = ARMOR_BOOTS_BAD
	allowed_sex = list(FEMALE)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured
	color = null

/obj/item/clothing/cloak/stabard/townhood
	name = "guard hood"
	desc = "A hood with the town's heraldic colors."
	color = "#3a7a29"
	detail_tag = "_spl"
	detail_color = "#0b1e06"
	icon_state = "guard_hood"
	item_state = "guard_hood"
	body_parts_covered = CHEST

/obj/item/storage/belt/rogue/leather/battleskirt/town
	color = "#3a7a29"

/obj/item/clothing/gloves/roguetown/alizeria/necrogloves
	name = "necromist gloves"
	desc = "Роскошные перчатки от которых несёт трупным запахом."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "necrogloves"
	item_state = "necrogloves"
	armor = ARMOR_GLOVES_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	max_integrity = 100
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	unarmed_bonus = 1.1
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/suit/roguetown/armor/alizeria/jandarms/chief/jacket
	slot_flags = ITEM_SLOT_ARMOR
	name = "jacket of the marshall"
	desc = "Роскошная куртка шефа жандармов."
	body_parts_covered = COVERAGE_VEST
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ciefjacket"
	item_state = "ciefjacket"
	armor = ARMOR_CUIRASS
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE, MALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM
	smelt_bar_num = 2
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	sellprice = 120
	armor = ARMOR_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	blade_dulling = DULLING_BASHCHOP
	armor_class = ARMOR_CLASS_LIGHT
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

/obj/item/clothing/cloak/jandarms/cief/alt
	name = "mastall half-cloak"
	desc = "Роскошный полуплащ шефа жандармов. Носит более декоративный характер, нежели практичный."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ciefcoatalt"
	item_state = "ciefcoatalt"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "ciefcoatalt"
	slot_flags = ITEM_SLOT_CLOAK
	sellprice = 50
	nodismemsleeves = TRUE
	slot_flags = ITEM_SLOT_CLOAK
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE, MALE)

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/whorearmor
	name = "oriental bra"
	desc = "Восточный вульгарный лифчик. Пользуется популярностью среди шлюх."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "whorearmor"
	item_state = "whorearmor"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	allowed_sex = list(FEMALE)

/obj/item/clothing/shoes/roguetown/boots/whoreboots
	name = "golden sandals"
	//dropshrink = 0.75
	desc = "Позолоченные сандали. Выглядят дорого, но для владельца весьма неудобны."
	gender = PLURAL
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "whoreboots"
	item_state = "whoreboots"
	sewrepair = TRUE
	armor = ARMOR_BOOTS_BAD
	allowed_sex = list(FEMALE)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured
	color = null

/obj/item/clothing/under/roguetown/tights/alizeria/whorepants
	name = "oriental trousers"
	desc = "Открытая восточная юбка."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "whorepants"
	item_state = "whorepants"
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/maidendress
	name = "exotic maiden dress"
	desc = "Роскошное платье служанки. Часто используется слугами знатных господ."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "maiden"
	item_state = "maiden"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	allowed_sex = list(FEMALE)

/obj/item/clothing/gloves/roguetown/alizeria/maidengloves
	name = "maiden gloves"
	desc = "Обычные перчатки служанки. На них виднеются весьма неаккуратные штришки."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "maidgloves"
	item_state = "maidgloves"
	armor = ARMOR_GLOVES_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	max_integrity = 100
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	unarmed_bonus = 1.1
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/maidendressu
	name = "maiden dress"
	desc = "Обычное платье служанки."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "maid"
	item_state = "maid"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	allowed_sex = list(FEMALE)

/obj/item/clothing/head/roguetown/alizeria/maidhat
	name = "maid hat"
	icon = 'icons/roguetown/alizeria/armor.dmi'
	icon_state = "maidhat"
	item_state = "maidhat"
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	sewrepair = TRUE

///////////////////////////////////////
// NK ITEMS
/obj/item/clothing/head/roguetown/grenzelhofthat/nk
	altdetail_color = "#c1b144"
	color = "#414143"
	detail_color = "#c1b144"

/obj/item/clothing/suit/roguetown/armor/gambeson/nk
	color = "#414143"

/obj/item/storage/belt/rogue/leather/battleskirt/nk
	color = "#414143"

/obj/item/clothing/head/roguetown/helmet/otavan/nk
	color = "#414143"
	detail_color = "#c1b144"

/obj/item/clothing/cloak/championt/nk
	name = "champion's cape"
	desc = "A cape with a gold embroided heraldry of Scarlet Reach, worn by the realm's champion."
	icon = 'icons/roguetown/clothing/special/champion.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/champion.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/champion.dmi'
	sleevetype = "shirt"
	icon_state = "champcloak"
	detail_tag = "_detail"
	detail_color = "#414143"
	alternate_worn_layer = CLOAK_BEHIND_LAYER

/obj/item/clothing/suit/roguetown/armor/chainmail/hauberk/ornate/nk
	color = "#414143"

/obj/item/clothing/under/roguetown/platelegs/nk
	color = "#414143"

/obj/item/clothing/wrists/roguetown/bracers/nk
	color = "#414143"

/obj/item/clothing/cloak/raincloak/furcloak/nk
	color = "#414143"

/obj/item/clothing/cloak/tstabard/townguard/nk
	color = "#414143"
	detail_color = "#c1b144"

/////////////////////////////
/obj/item/clothing/suit/roguetown/armor/alizeria/lord/guard
	slot_flags = ITEM_SLOT_ARMOR
	name = "royal cuirass"
	desc = "Роскошная кираса придворного гвардейца. Возможно защитит от пули."
	body_parts_covered = COVERAGE_VEST
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "goldchest"
	item_state = "goldchest"
	armor = ARMOR_CUIRASS
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE, MALE)
	nodismemsleeves = TRUE
	blocking_behavior = null
	max_integrity = 300
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	armor_class = ARMOR_CLASS_MEDIUM
	smelt_bar_num = 2
	boobed_detail = FALSE
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "goldchest"

/obj/item/clothing/suit/roguetown/armor/gambeson/alizeria/guardalt
	name = "guardian jacket"
	desc = "Качественный дублет королевской гвардии."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "guardian"
	item_state = "guardian"
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE, MALE)
	nodismemsleeves = TRUE
	max_integrity = 300
	smelt_bar_num = 2
	sellprice = 60
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"

////////////////////
// ВЕДЬМА
/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/witch
	name = "witch dress"
	desc = "Мрачное платье ведьмы. Пропитано трупным запахом."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "witchdress"
	item_state = "witchdress"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	allowed_sex = list(FEMALE)

/obj/item/clothing/gloves/roguetown/alizeria/witchgloves
	name = "witch gloves"
	desc = "Кожаные чёрные перчатки. На них удачно скрывается засохшая кровь."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "witchgloves"
	item_state = "witchgloves"
	armor = ARMOR_GLOVES_LEATHER
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT)
	max_integrity = 100
	resistance_flags = FIRE_PROOF
	blocksound = SOFTHIT
	blade_dulling = DULLING_BASHCHOP
	break_sound = 'sound/foley/cloth_rip.ogg'
	drop_sound = 'sound/foley/dropsound/cloth_drop.ogg'
	anvilrepair = null
	sewrepair = TRUE
	salvage_result = /obj/item/natural/hide/cured
	unarmed_bonus = 1.1
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)

/obj/item/clothing/cloak/alizeria/witchcloak
	name = "witch cloak"
	desc = "Мрачный плащ ведьмы."
	color = null
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "witchcloak"
	item_state = "witchcloak"
	alternate_worn_layer = CLOAK_BEHIND_LAYER
	slot_flags = ITEM_SLOT_BACK_R|ITEM_SLOT_CLOAK
//	body_parts_covered = ARMS|CHEST
	boobed = TRUE
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	nodismemsleeves = TRUE
	inhand_mod = TRUE
	hoodtype = /obj/item/clothing/head/hooded/alizeria/witchhood
	toggle_icon_state = FALSE
	salvage_result = /obj/item/natural/hide/cured
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)

/obj/item/clothing/head/hooded/alizeria/witchhood
	name = "hood"
	desc = "This one will shelter me from the weather and my identity too."
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon = 'icons/roguetown/alizeria/armor.dmi'
	icon_state = "witchhood"
	item_state = "witchhood"
	slot_flags = ITEM_SLOT_HEAD
	dynamic_hair_suffix = ""
	edelay_type = 1
	body_parts_covered = HEAD
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDETAIL
	block2add = FOV_BEHIND

/obj/item/clothing/head/roguetown/helmet/blacksteel/modern/alizeria/sheriffhelmet
	name = "sturdy armet"
	desc = "Крайне качественный шлем из стали, которую умелые мастера смогли довести до качества чёрностали."
	body_parts_covered = FULL_HEAD
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon = 'icons/roguetown/alizeria/armor.dmi'
	icon_state = "sheriffhelmet"
	item_state = "sheriffhelmet"
	flags_inv = HIDEEARS|HIDEFACE|HIDESNOUT|HIDEHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = ARMOR_PLATE_BSTEEL
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)
	block2add = FOV_BEHIND
	max_integrity = 850
	smeltresult = /obj/item/ingot/blacksteel
	smelt_bar_num = 2

/obj/item/clothing/suit/roguetown/armor/plate/full/alizeria/sheriffchest
	name = "sturdy plate"
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon = 'icons/roguetown/alizeria/armor.dmi'
	icon_state = "sheriffarmor"
	item_state = "sheriffarmor"
	desc = "Крепкие латы, идеальные подогнанные под своего заказчика.."

	equip_delay_self = 10 SECONDS
	unequip_delay_self = 10 SECONDS

	max_integrity = 1200


/obj/item/rogueore/alizeria/insulatedcrystall
	name = "insulated crystall"
	desc = "Кристал изолированного хладагента. Некогда являлся 'утерянной' технологией павшей Империи, однако десятилетие назад учёные Монфора смогли воссоздать точную копию подобного артефакта. С тех пор они питают целые города, как когда-то это делали тысячи лет назад."
	icon_state = "orecoal1"
	firefuel = 30 MINUTES
	smeltresult = /obj/item/rogueore/alizeria/insulatedcrystall
	sellprice = 350
	light_system = MOVABLE_LIGHT
	light_outer_range = 4
	light_power = 1
	light_color = "#73eef7"
	icon = 'icons/roguetown/alizeria/items.dmi'
	icon_state = "refrig"
	item_state = "refrig"

/obj/effect/spawner/lootdrop/roguetown/dungeon/insulatedcrystall
	icon_state = "refrig"
	loot = list(
		/obj/item/rogueore/alizeria/insulatedcrystall = 1,
		null = 3  // 3 пустых слота = 75% шанс ничего не спавнится
	)
	lootcount = 1



////////////////////////////////// МАРИЯ
/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/mariaarmor
	name = "hunter dress"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariaarmor"
	item_state = "mariaarmor"
	boobed = TRUE
	allowed_sex = list(FEMALE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	slot_flags = ITEM_SLOT_ARMOR
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	max_integrity = 2000
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/obj/item/clothing/shoes/roguetown/boots/alizeria/mariaboots
	name = "hunter boots"
	//dropshrink = 0.75
	desc = ""
	gender = PLURAL
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariaboots"
	item_state = "mariaboots"
	sewrepair = TRUE
	armor = ARMOR_BOOTS_BAD
	allowed_sex = list(FEMALE)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured
	color = null
	max_integrity = 2000
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/obj/item/clothing/cloak/jandarms/alizeria/mariacloak
	name = "hunter cloak"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariacloak"
	item_state = "mariacloak"
	body_parts_covered = CHEST|GROIN|VITALS|ARMS
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "mariacloak"
	slot_flags = ITEM_SLOT_CLOAK
	sellprice = 50
	nodismemsleeves = TRUE
	slot_flags = ITEM_SLOT_CLOAK
	allowed_race = NON_DWARVEN_RACE_TYPES
	allowed_sex = list(FEMALE)
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	max_integrity = 2000
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/obj/item/storage/belt/rogue/alizeria/mariabelt
	name = "hunter belt"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariabelt"
	item_state = "mariabelt"
	equip_sound = 'sound/blank.ogg'
	sewrepair = TRUE
	sellprice = 10
	resistance_flags = FIRE_PROOF

/obj/item/clothing/under/roguetown/tights/alizeria/mariapants
	name = "hunter pants"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariapants"
	item_state = "mariapants"
	allowed_race = NON_DWARVEN_RACE_TYPES
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	max_integrity = 2000
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/obj/item/clothing/suit/roguetown/shirt/dress/alizeria/mariashirt
	name = "hunter shirt"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariavest"
	item_state = "mariavest"
	boobed = TRUE
	allowed_race = NON_DWARVEN_RACE_TYPES
	color = null
	r_sleeve_status = SLEEVE_NORMAL
	l_sleeve_status = SLEEVE_NORMAL
	sleeved = 'icons/roguetown/alizeria/armoronmob.dmi'
	sleevetype = "shirt"
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	max_integrity = 2000
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/obj/item/clothing/head/mariahat
	name = "hunter hat"
	desc = ""
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "mariahat"
	item_state = "mariahat"
	armor = list("blunt" = 200, "slash" = 200, "stab" = 200, "piercing" = 200, "fire" = 200, "acid" = 200)
	max_integrity = 2000
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_PICK)

/////////////////////////////////////
/obj/item/clothing/neck/roguetown/alizeria/iceamulet
	name = "ice root"
	desc = "'Корень льда' - Шуточное название амулета, пущенное магами среди незнающих экспедиторов. Несмотря на название - он вполне себе применим. Его ношение мгновенно наделяет опытом выживания в лесах острова льда подобно первопроходцам, защищая от неожиданных засад."
	icon = 'icons/roguetown/alizeria/armor.dmi'
	mob_overlay_icon = 'icons/roguetown/alizeria/armoronmob.dmi'
	icon_state = "ice_amulet"
	item_state = "ice_amulet"
	resistance_flags = FIRE_PROOF
	sellprice = 100
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/neck/roguetown/alizeria/iceamulet/equipped(mob/user, slot)
	. = ..()
	if(slot == SLOT_NECK)
		ADD_TRAIT(user, TRAIT_AMBUSH_RESISTANT, "iceamulet")

/obj/item/clothing/neck/roguetown/alizeria/iceamulet/dropped(mob/user)
	. = ..()
	REMOVE_TRAIT(user, TRAIT_AMBUSH_RESISTANT, "iceamulet")


/obj/item/compass
	name = "compass of misfortunes"
	desc = "Причудливый компас, способный указать на расположение ближайших ловушек."
	icon = 'icons/roguetown/alizeria/items.dmi'
	icon_state = "compass_stable"
	w_class = WEIGHT_CLASS_SMALL
	grid_width = 32
	grid_height = 32
	var/last_update = 0
	var/update_interval = 1 // Update every 0.5 seconds (5 deciseconds)
	var/detection_range = 5

/obj/item/compass/Initialize(mapload)
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/compass/process()
	if(world.time < last_update + update_interval)
		return

	last_update = world.time
	update_compass_state()

/obj/item/compass/proc/update_compass_state()
	// Only check when the compass is held or worn
	if(!ismob(loc))
		return

	var/mob/holder = loc

	// Find all traps within detection range
	var/obj/structure/trap/closest_trap = null
	var/closest_distance = INFINITY

	for(var/obj/structure/trap/T in range(detection_range, holder))
		if(!T.armed)
			continue

		var/distance = get_dist(holder, T)
		if(distance < closest_distance)
			closest_distance = distance
			closest_trap = T

	// Update icon based on findings
	if(!closest_trap)
		// No trap in range - use stable compass sprite
		icon_state = "compass_stable"
	else
		// Found a trap - determine direction and set appropriate icon state
		var/direction = get_dir(holder, closest_trap)
		var/icon_dir = dir_to_compass_state(direction)
		icon_state = "compass_target[icon_dir]"

/obj/item/compass/proc/dir_to_compass_state(direction)
	// Maps BYOND directions to compass sprite directions
	// compass_target has 8 directions:
	// dir1 = south, dir2 = southeast, dir3 = east, dir4 = northeast,
	// dir5 = north, dir6 = northwest, dir7 = west, dir8 = southwest

	switch(direction)
		if(SOUTH)
			return 1
		if(SOUTHEAST)
			return 2
		if(EAST)
			return 3
		if(NORTHEAST)
			return 4
		if(NORTH)
			return 5
		if(NORTHWEST)
			return 6
		if(WEST)
			return 7
		if(SOUTHWEST)
			return 8
		else
			return 1 // Default fallback

/obj/item/compass/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

///////////////////////////////
/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers
	name = "bracer of flame"
	desc = "Военное изобретение, на удивление прямиком из Альтамира. Опытные мастера ближнего боя используют его что бы поджечь противника, либо ослепить - пустив пламя в глаза. Питается от мелкого огненного кристалла, который вы естественно не видите."
	icon_state = "hotbracer"
	armor = ARMOR_LEATHER_GOOD
	prevent_crits = list(BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST, BCLASS_CHOP, BCLASS_SMASH)
	max_integrity = 265
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

	// Cooldown для поджигания (5 секунд)
	var/last_ignite = 0
	var/ignite_cooldown = 5 SECONDS

	// Cooldown для ослепления (30 секунд)
	var/last_blind = 0
	var/blind_cooldown = 30 SECONDS

	// Шанс поджечь противника при атаке
	var/ignite_chance = 50

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/equipped(mob/user, slot)
	. = ..()
	// Добавляем компонент для отслеживания атак
	user.AddComponent(/datum/component/hotbracer_flame_proc, src)

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/dropped(mob/user)
	. = ..()
	// Удаляем компонент
	var/datum/component/hotbracer_flame_proc/comp = user.GetComponent(/datum/component/hotbracer_flame_proc)
	if(comp)
		qdel(comp)

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/proc/attempt_ignite(mob/living/target)
	// Проверяем шанс и кулдаун
	if(prob(ignite_chance) && world.time >= last_ignite + ignite_cooldown)
		trigger_ignite(target)

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/proc/trigger_ignite(mob/living/target)
	if(!isliving(target))
		return

	last_ignite = world.time

	// Поджигаем противника как костёр (используя fire_act как камин)
	target.fire_act(5)

	// Звуковой эффект
	playsound(target, 'sound/magic/whiteflame.ogg', 50, TRUE)

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/attack_right(mob/user)
	. = ..()

	// Проверяем, что наруч в руке или надет на запястья
	var/in_hand = user.is_holding(src)
	var/in_wrist_slot = (user.get_item_by_slot(SLOT_WRISTS) == src)

	if(!in_hand && !in_wrist_slot)
		to_chat(user, span_warning("Нужно сперва надеть его, что бы использовать."))
		return

	if(world.time < last_blind + blind_cooldown)
		var/time_left = round((last_blind + blind_cooldown - world.time) / 10)
		to_chat(user, span_warning("Нужно подождать [time_left] секунд что бы вновь использовать."))
		return

	trigger_blind(user)

/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/proc/trigger_blind(mob/living/carbon/human/wearer)
	last_blind = world.time

	// Получаем текущую локацию
	var/turf/T = get_turf(wearer)
	if(!T)
		return

	// Ослепляем всех в радиусе 1 клетки (соседние клетки)
	for(var/mob/living/L in range(1, wearer))
		if(L == wearer)
			continue // Не ослепляем себя

		// Ослепляем и оглушаем
		L.blind_eyes(3)
		L.Stun(2)
		L.visible_message(
			span_danger("[L] ослепляется пламенем!"),
			span_userdanger("Я ослепляюсь пламенем!")
		)

	// Визуальный эффект для носителя
	wearer.visible_message(
		span_danger("Наруч [wearer] вспыхивает ослепительной вспышкой пламени!"),
		span_notice("Мой наруч вспыхивает!")
	)

	// Звуковой эффект
	playsound(T, 'sound/misc/frying.ogg', 100, TRUE)


// ========== КОМПОНЕНТ ДЛЯ ОТСЛЕЖИВАНИЯ АТАК ==========

/datum/component/hotbracer_flame_proc
	dupe_mode = COMPONENT_DUPE_UNIQUE
	var/obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/bracer

/datum/component/hotbracer_flame_proc/Initialize(obj/item/clothing/wrists/roguetown/bracers/leather/alizeria/hotbracers/source_bracer)
	if(!ishuman(parent))
		return COMPONENT_INCOMPATIBLE

	bracer = source_bracer
	if(!bracer)
		return COMPONENT_INCOMPATIBLE

	// Слушаем успешные атаки
	RegisterSignal(parent, COMSIG_MOB_ITEM_ATTACK, PROC_REF(on_mob_attack))

/datum/component/hotbracer_flame_proc/proc/on_mob_attack(datum/source, atom/target, mob/living/user, obj/item/item)
	SIGNAL_HANDLER

	// Проверяем, что атака была успешной и наруч все еще надет
	if(!bracer || !isliving(target))
		return

	// Проверяем, что это атака оружием ближнего боя (не выстрел и не магия)
	if(!user.used_intent)
		return

	// Пропускаем ненужные интенты
	if(user.used_intent.no_attack)
		return

	// Проверяем, что наруч все еще на владельце
	if(user.get_item_by_slot(SLOT_WRISTS) != bracer && !user.is_holding(bracer))
		return

	// Пытаемся поджечь цель
	bracer.attempt_ignite(target)
