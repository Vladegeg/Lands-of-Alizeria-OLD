/datum/job/roguetown/eger
	title = "Huntsman"
	flag = EGER
	department_flag = AVANGARD
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	allowed_races = ALIZ_ALL_RACES
	tutorial = "“ы - один из немногих людей, что могли бы назвать себ€ свободными на континенте. —ослали теб€ на остров не в качестве наказани€ или по строгому приказу. “ы скорее оказалс€ одним из немногих добровольцев, кто согласилс€ помочь экспедиции сохран€ть безопасность на дорогах ведущих к лагерю, а также по возможности помогать заблудшим в лесах путникам.  оммандер всЄ ещЄ €вл€етс€ дл€ теб€ начальником даже несмотр€ на то, что он не служил в твоей армии. —лушай его и помогай в управлении вс€ким отродьем."
	advclass_cat_rolls = list(CTAG_EGER = 7)
	bypass_lastclass = TRUE
	bypass_jobban = FALSE
	display_order = JDO_EGER
	give_bank_account = TRUE
	min_pq = 0
	max_pq = null
	round_contrib_points = 2
	wanderer_examine = FALSE
	advjob_examine = TRUE
	same_job_respawn_delay = 0
	class_setup_examine = TRUE
	cmode_music = 'sound/music/combat_towner.ogg'
	social_rank = SOCIAL_RANK_PEASANT

	job_subclasses = list(
		/datum/advclass/eger
	)

/datum/advclass/eger
	name = "Huntsman"
	tutorial = "“ы - один из немногих людей, что могли бы назвать себ€ свободными на континенте. —ослали теб€ на остров не в качестве наказани€ или по строгому приказу. “ы скорее оказалс€ одним из немногих добровольцев, кто согласилс€ помочь экспедиции сохран€ть безопасность на дорогах ведущих к лагерю, а также по возможности помогать заблудшим в лесах путникам.  оммандер всЄ ещЄ €вл€етс€ дл€ теб€ начальником даже несмотр€ на то, что он не служил в твоей армии. —лушай его и помогай в управлении вс€ким отродьем."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = ALIZ_ALL_RACES
	outfit = /datum/outfit/job/adventurer/eger
	subclass_social_rank = SOCIAL_RANK_PEASANT

	category_tags = list(CTAG_EGER)

	traits_applied = list(TRAIT_MEDIUMARMOR, TRAIT_NASTY_EATER, TRAIT_NOFALLDAMAGE1, TRAIT_PERFECT_TRACKER, TRAIT_JUSTICARSIGHT)
	maximum_possible_slots = 1
	subclass_stats = list(
		STATKEY_END = 2,
		STATKEY_CON = -2,
		STATKEY_STR = 2,
		STATKEY_INT = 1,
		STATKEY_LCK = -2,
		STATKEY_SPD = 3
	)

	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/maces = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/axes = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/crossbows = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/bows = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_JOURNEYMAN, // The strongest fists in the land.
		/datum/skill/combat/knives = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/smelting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/traps = SKILL_LEVEL_EXPERT,
		/datum/skill/craft/masonry = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/riding = SKILL_LEVEL_EXPERT,
		/datum/skill/combat/guns = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/tracking = SKILL_LEVEL_MASTER,
		/datum/skill/labor/butchering = SKILL_LEVEL_JOURNEYMAN
	)

/datum/outfit/job/adventurer/eger/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/hatblu
	cloak = /obj/item/clothing/cloak/wardencloak
	backr = /obj/item/gun/ballistic/revolver/grenadelauncher/aliz/riflealt
	backl = /obj/item/storage/backpack/rogue/satchel
	neck = /obj/item/clothing/neck/roguetown/psicross/wood
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/winterjacket
	wrists = /obj/item/clothing/wrists/roguetown/bracers/leather/heavy
	id = /obj/item/scomstone
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/black
	gloves = /obj/item/clothing/gloves/roguetown/otavan/psygloves
	beltr = /obj/item/rogueweapon/stoneaxe/woodcut/steel
	belt = /obj/item/storage/belt/rogue/leather/black
	beltl = /obj/item/quiver/mpylipistolalt
	pants = /obj/item/clothing/under/roguetown/tights/explorerpants
	shoes = /obj/item/clothing/shoes/roguetown/ridingboots

	backpack_contents = list(
						/obj/item/roguekey/alizeria/eger = 1,
						/obj/item/rogueweapon/huntingknife/idagger/steel/special = 1,
						/obj/item/reagent_containers/food/snacks/rogue/ration = 1,
						)