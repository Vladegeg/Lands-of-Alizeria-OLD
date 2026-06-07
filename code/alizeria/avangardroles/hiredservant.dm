/datum/job/roguetown/aservant
	title = "Hired Servant"
	flag = ASERVANT
	department_flag = AVANGARD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	allowed_sexes = list(FEMALE)
	allowed_races = ALIZ_ALL_RACES
	disallowed_races = list(
		/datum/species/lamia,
	)
	tutorial = "В маленьком городке посреди метели и нескончаемых снегов - нету места для множества поместий или дворцов. Однако, некоторым всe также могут пригодиться слуги. Ты являешься служанкой по найму с большим опытом в сфере своей работы. В отличие от остальных служанок на континенте - ты сама выбираешь с кем и как работать, оставляя за собой выбор уйти от хозяина, если тебе что-то не понравится. Вместе с этим тебе удалось освоить множество навыков на базовом и продвинутом уровнях, что позволяет тебе верно исполнять различные поручения господина, даже если они связаны с нелeгкими науками по типу алхимии."
	outfit = /datum/outfit/job/aservant/maid
	advclass_cat_rolls = list(CTAG_ASERVANT = 9)
	display_order = JDO_ASERVANT
	give_bank_account = TRUE
	min_pq = 0
	max_pq = null
	round_contrib_points = 2
	advjob_examine = TRUE
	cmode_music = 'sound/music/combat_bard.ogg'
	social_rank = SOCIAL_RANK_PEASANT

	virtue_restrictions = list(
		/datum/virtue/utility/noble,
		/datum/virtue/utility/blueblooded,
	)

	job_subclasses = list(
		/datum/advclass/aservant/maid
	)

/datum/advclass/aservant/maid
	name = "Hired Servant"
	tutorial = "В маленьком городке посреди метели и нескончаемых снегов - нету места для множества поместий или дворцов. Однако, некоторым всe также могут пригодиться слуги. Ты являешься служанкой по найму с большим опытом в сфере своей работы. В отличие от остальных служанок на континенте - ты сама выбираешь с кем и как работать, оставляя за собой выбор уйти от хозяина, если тебе что-то не понравится. Вместе с этим тебе удалось освоить множество навыков на базовом и продвинутом уровнях, что позволяет тебе верно исполнять различные поручения господина, даже если они связаны с нелeгкими науками по типу алхимии."
	category_tags = list(CTAG_ASERVANT)

	subclass_stats = list(
		STATKEY_PER = 2,
		STATKEY_INT = 1,
		STATKEY_STR = -3,
		STATKEY_SPD = 2
	)
	traits_applied = list(TRAIT_CICERONE, TRAIT_KEENEARS, TRAIT_SLEUTH)
	subclass_skills = list(
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/medicine = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/sneaking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/stealing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/tracking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/butchering = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/traps = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/alchemy = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/farming = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/fishing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/music = SKILL_LEVEL_JOURNEYMAN,
		)

/datum/outfit/job/aservant/maid/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/hatblu
	armor = /obj/item/clothing/suit/roguetown/armor/basiceast/crafteast
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backl = /obj/item/storage/backpack/rogue/satchel
	belt = /obj/item/storage/belt/rogue/leather
	beltr = /obj/item/rogueweapon/huntingknife
	beltl = /obj/item/storage/belt/rogue/pouch/coins/poor
	id = /obj/item/scomstone/bad
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	gloves = /obj/item/clothing/gloves/roguetown/angle/atgervi
	pants = /obj/item/clothing/under/roguetown/trou/leather

	backpack_contents = list(
						/obj/item/flint = 1,
						/obj/item/rogueore/coal=1,
						/obj/item/roguekey/alizeria/avangservant=1,
						/obj/item/flashlight/flare/torch = 1,
						)

	if(H.age == AGE_MIDDLEAGED)
		H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)