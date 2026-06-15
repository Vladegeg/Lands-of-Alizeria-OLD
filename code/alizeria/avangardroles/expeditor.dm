/datum/job/roguetown/expeditor
	title = "Expeditor"
	flag = EXPEDITOR
	department_flag = AVANGARD
	faction = "Station"
	total_positions = 10
	spawn_positions = 10
	display_order = JDO_EXPEDITOR
	allowed_races = ALIZ_ALL_RACES
	social_rank = SOCIAL_RANK_PEASANT
	tutorial = "Удивительный мир магии, мифов, исторических трагедий и тайных знаний всегда побуждал людей ступить на тропы путешественников. Ты являешься одним из таких людей, что только начали свой путь и решили сразу же попасть в одно из самых опасных мест в мире, что бы заполучить быструю славу или богатства. Очевидно глупое решение, но кто знает - может именно ты станешь тем самым счастливчиком из сотни таких же глупцов? Так или иначе - постарайся найти себе верного союзника, ибо без него ты точно вряд ли выживешь в столь опасном месте."
	whitelist_req = FALSE
	outfit = /datum/outfit/job/expeditor
	min_pq = 0
	job_traits = list(TRAIT_MEDIUMARMOR, TRAIT_STEELHEARTED)
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_guard.ogg'
	advclass_cat_rolls = list(CTAG_EXPEDITOR = 2)
	job_subclasses = list(
		/datum/advclass/expeditor/classic,
		/datum/advclass/expeditor/gunslinger,
		/datum/advclass/expeditor/raider,
		/datum/advclass/expeditor/dumbass,
		/datum/advclass/expeditor/warlock,
		/datum/advclass/expeditor/stranger,
		/datum/advclass/expeditor/rejected,
	)

/datum/outfit/job/expeditor/pre_equip(mob/living/carbon/human/H)
	..()

/datum/advclass/expeditor/classic
	name = "Axeman"
	tutorial = "Стандартный воин гильдии наёмников. Вооружён топором и щитом, а также имеет крайне неплохие навыки их владением."
	outfit = /datum/outfit/job/expeditor/classic
	category_tags = list(CTAG_EXPEDITOR)
	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_LCK = 1,
		STATKEY_CON = 2,
		STATKEY_END = 3,
		STATKEY_SPD = -1,
		STATKEY_STR = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/axes = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/bows = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/fishing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/expeditor/classic/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/sallet/warden
	cloak = /obj/item/clothing/cloak/half
	backl = /obj/item/rogueweapon/shield/heater
	backr = /obj/item/storage/backpack/rogue/satchel
	armor = /obj/item/clothing/suit/roguetown/armor/plate/half/fluted
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	neck = /obj/item/clothing/neck/roguetown/chaincoif/full
	belt = /obj/item/storage/belt/rogue/leather/black
	shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/inq
	gloves = /obj/item/clothing/gloves/roguetown/angle
	beltr = /obj/item/rogueweapon/stoneaxe/battle
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/otavan
	shoes = /obj/item/clothing/shoes/roguetown/boots/grenzelhoft
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/reagent_containers/food/snacks/rogue/ration = 1)

///////////////////////////////////////
/datum/advclass/expeditor/gunslinger
	name = "Gunfighter"
	tutorial = "Бандит с большой дороги, отправленный как экспедитор в качестве наказания. Вооружён пистолем, а также имеет неплохие навыки воровства и взлома."
	outfit = /datum/outfit/job/expeditor/gunslinger
	category_tags = list(CTAG_EXPEDITOR)
	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_LCK = 2,
		STATKEY_CON = -1,
		STATKEY_END = -1,
		STATKEY_SPD = 1,
		STATKEY_STR = -1,
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/guns = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/fishing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/expeditor/gunslinger/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/duelhat
	cloak = /obj/item/clothing/cloak/thief_cloak/yoruku
	backl = /obj/item/storage/backpack/rogue/satchel
	backr = /obj/item/quiver/pylipistolalt
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	armor = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/pontifex
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/white
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves
	beltr = /obj/item/rogueweapon/sword/sabre
	beltl = /obj/item/gun/ballistic/revolver/grenadelauncher/aliz/gun/uspistol
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/grenzelpants
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/reagent_containers/food/snacks/rogue/ration = 1, /obj/item/storage/belt/rogue/pouch/coins/poor = 1, /obj/item/lockpick = 2)

///////////////////////////////////////////////////////
/datum/advclass/expeditor/raider
	name = "Raider"
	tutorial = "Морской налётчик, что однажды был каким-то образом пойман и отправлен в экспедицию. Вооружён копьём, а также обладает навыками для стремительного наступления."
	outfit = /datum/outfit/job/expeditor/raider
	category_tags = list(CTAG_EXPEDITOR)
	subclass_stats = list(
		STATKEY_PER = -2,
		STATKEY_LCK = -1,
		STATKEY_CON = -1,
		STATKEY_END = 1,
		STATKEY_SPD = 3,
		STATKEY_STR = 2,
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/polearms = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/fishing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/expeditor/raider/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/beakhelm
	cloak = /obj/item/clothing/cloak/raincloak
	backl = /obj/item/rogueweapon/spear/bronze
	backr = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/clothing/neck/roguetown/chaincoif/full
	armor = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/inq
	neck = /obj/item/clothing/neck/roguetown/gorget/steel
	wrists = /obj/item/clothing/wrists/roguetown/bracers/iron
	belt = /obj/item/storage/belt/rogue/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt2
	gloves = /obj/item/clothing/gloves/roguetown/fingerless/shadowgloves
	beltr = /obj/item/rogueweapon/shield/buckler
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	pants = /obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather/reinforced
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/reagent_containers/food/snacks/rogue/ration = 1)

//////////////////////////////////////////////
/datum/advclass/expeditor/warlock
	name = "Warlock"
	tutorial = "Тёмный маг, что согласился направить свою ересь на битву с врагами королевства. Является слабым сам по себе, однако обладает магией призыва."
	outfit = /datum/outfit/job/expeditor/warlock
	category_tags = list(CTAG_EXPEDITOR)
	subclass_stats = list(
		STATKEY_PER = -2,
		STATKEY_LCK = 2,
		STATKEY_CON = -2,
		STATKEY_END = -1,
		STATKEY_SPD = 2,
		STATKEY_STR = -2,
	)
	traits_applied = list(TRAIT_MAGEARMOR, TRAIT_GRAVEROBBER, TRAIT_ARCYNE_T3, TRAIT_RITUALIST, TRAIT_NOSTINK)
	subclass_spellpoints = 8
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/traps = SKILL_LEVEL_APPRENTICE,
		/datum/skill/magic/arcane = SKILL_LEVEL_JOURNEYMAN,

	)

/datum/outfit/job/expeditor/warlock/pre_equip(mob/living/carbon/human/H)
	..()
	backr = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/clothing/neck/roguetown/chaincoif/full
	armor = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/inq
	neck = /obj/item/clothing/neck/roguetown/psicross/necra
	belt = /obj/item/storage/belt/rogue/leather/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	gloves = /obj/item/clothing/gloves/roguetown/fingerless/shadowgloves
	beltr = /obj/item/storage/belt/rogue/pouch/coins/mid
	beltl = /obj/item/rogueweapon/huntingknife/idagger/steel/special
	pants = /obj/item/clothing/under/roguetown/heavy_leather_pants/eastpants1
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/reagent_containers/food/snacks/rogue/ration = 1, /obj/item/ritechalk = 1)

	if(should_wear_femme_clothes(H))
		head = /obj/item/clothing/head/flowers/poppy
		armor = /obj/item/clothing/suit/roguetown/armor/armordress/winterdress
	else if(should_wear_masc_clothes(H))
		cloak = /obj/item/clothing/cloak/templar/necran
		armor = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt1
		head = /obj/item/clothing/head/roguetown/dungeoneer

	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/raise_lesser_undead)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/gravemark)
/////////////////////////////////////////////////////////
/datum/advclass/expeditor/dumbass
	name = "Dumbass"
	tutorial = "Большой и тупой. Когда-то тебе хватило ума помародёрствывать после очередной битвы Гриммшталя. Некоторые доспехи были ржавыми, однако тебе было всё равно. Увидев посмешище в виде тебя - армейский отряд сразу же продал тебя как раба Монфору, а те - отправили тебя как члена экспедиции. Полный комплект доспехов с тебя так и не сняли."
	outfit = /datum/outfit/job/expeditor/dumbass
	category_tags = list(CTAG_EXPEDITOR)
	traits_applied = list(TRAIT_HEAVYARMOR, TRAIT_BIGGUY, TRAIT_CRITICAL_RESISTANCE, TRAIT_STRONGKICK)
	subclass_stats = list(
		STATKEY_PER = -3,
		STATKEY_LCK = -3,
		STATKEY_CON = 2,
		STATKEY_END = 2,
		STATKEY_SPD = -2,
		STATKEY_INT = -3,
		STATKEY_STR = 3,
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/shields = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/axes = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/swords = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/knives = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/carpentry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/fishing = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/traps = SKILL_LEVEL_NOVICE,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_NOVICE,
	)

/datum/outfit/job/expeditor/dumbass/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/elvenbarbute
	mask = /obj/item/clothing/mask/rogue/facemask/steel/steppesman
	backr = /obj/item/rogueweapon/shield/iron
	backl = /obj/item/storage/backpack/rogue/backpack
	cloak = /obj/item/clothing/cloak/stabard
	neck = /obj/item/clothing/neck/roguetown/gorget/aalloy
	armor = /obj/item/clothing/suit/roguetown/armor/plate/scale
	wrists = /obj/item/clothing/wrists/roguetown/bracers/aalloy
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	gloves = /obj/item/clothing/gloves/roguetown/chain/orcish
	beltr = /obj/item/rogueweapon/mace/warhammer/alloy
	belt = /obj/item/storage/belt/rogue/leather/steel/tasset
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	pants = /obj/item/clothing/under/roguetown/platelegs/aalloy
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor
	backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1, /obj/item/reagent_containers/food/snacks/rogue/ration = 1)

//////////////////////////////////////////////////////
/datum/advclass/expeditor/stranger
	name = "Stranger"
	tutorial = "Ты был обычным странником, что как и все странники - казался весьма странным. В один момент безумный король Монфора увидил во всех блуждающих странников - вражеских шпионов короны и весьма быстро ты оказался в тюрьме, а затем и вовсе был незаконно сослан в экспедицию, так как вряд ли твоя судьба будет кого-то волновать."
	outfit = /datum/outfit/job/expeditor/stranger
	category_tags = list(CTAG_EXPEDITOR)
	traits_applied = list(TRAIT_NOFALLDAMAGE1, TRAIT_DISFIGURED, TRAIT_SLAYER)
	subclass_stats = list(
		STATKEY_PER = -3,
		STATKEY_LCK = 2,
		STATKEY_CON = 2,
		STATKEY_END = 2,
		STATKEY_SPD = -2,
		STATKEY_INT = 4,
		STATKEY_STR = -2,
	)
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/unarmed = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/carpentry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/fishing = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/expeditor/stranger/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/mentorhat
	backr = /obj/item/rogueweapon/woodstaff
	backl = /obj/item/storage/backpack/rogue/backpack
	armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/atgervi
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt2
	gloves = /obj/item/clothing/gloves/roguetown/angle/pontifex
	beltr = /obj/item/rogueweapon/huntingknife/combat
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shoes = /obj/item/clothing/shoes/roguetown/sandals
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/rogue/ration = 1)

////////////////////////////////////////////////////////////
/datum/advclass/expeditor/rejected
	name = "Rejected"
	tutorial = "Пускай мир и постепенно уходит от поклонения каким-либо богам, ты же - так не считал. Возможно ты слишком яро проповедовал на улице, либо просто не понравился какому-то знатному господину, так или иначе - ты был сослан в экспедицию не по своей воле."
	outfit = /datum/outfit/job/expeditor/rejected
	category_tags = list(CTAG_EXPEDITOR)
	allowed_patrons = ALL_DIVINE_PATRONS
	var/church_favor = 0
	traits_applied = list(TRAIT_ARCYNE_T1, TRAIT_RITUALIST, TRAIT_CLERGY)
	subclass_stats = list(
		STATKEY_PER = 1,
		STATKEY_LCK = 2,
		STATKEY_CON = -1,
		STATKEY_END = -1,
		STATKEY_SPD = 2,
		STATKEY_INT = 1,
		STATKEY_STR = -2,
	)
	subclass_spellpoints = 4
	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/carpentry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/fishing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/magic/holy = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/sewing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_APPRENTICE,
	)

/datum/outfit/job/expeditor/rejected/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/roguehood/psydon/confessor
	backl = /obj/item/storage/backpack/rogue/satchel
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/qaba
	neck = /obj/item/clothing/neck/roguetown/psicross/wood
	shirt = /obj/item/clothing/suit/roguetown/shirt/robe/astrata
	gloves = /obj/item/clothing/gloves/roguetown/angle
	beltr = /obj/item/rogueweapon/mace/cudgel
	belt = /obj/item/storage/belt/rogue/leather
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/rogue/ration = 1, /obj/item/ritechalk = 1)

	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = 2, passive_gain = 1, start_maxed = FALSE, devotion_limit = 250)
	H.miracle_points = max(H.miracle_points, 8)