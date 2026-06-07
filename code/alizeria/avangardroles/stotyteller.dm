/datum/job/roguetown/storyteller
	title = "Storyteller"
	flag = STORYTELLER
	department_flag = AVANGARD
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	announce_latejoin = FALSE

	allowed_races = ALIZ_ALL_RACES

	tutorial = "Техническая роль."

	outfit = /datum/outfit/job/storyteller
	display_order = JDO_STORYTELLER
	give_bank_account = 43
	min_pq = 99
	max_pq = null
	round_contrib_points = 3

	job_traits = list(TRAIT_ZJUMP, TRAIT_STEELHEARTED, TRAIT_LEAPER, TRAIT_DISGUISED_SOCIAL, TRAIT_DISGUISED, TRAIT_EMPATH, TRAIT_BREADY, TRAIT_HEAVYARMOR, TRAIT_COLD_IMMUNITY, TRAIT_DODGEEXPERT, TRAIT_DECEIVING_MEEKNESS, TRAIT_CRITICAL_RESISTANCE, TRAIT_INFINITE_STAMINA, TRAIT_NOFALLDAMAGE2, TRAIT_GRABIMMUNE, TRAIT_DISFIGURED, TRAIT_ANTIMAGIC, TRAIT_ANTISCRYING, TRAIT_SHOCKIMMUNE, TRAIT_NOSLEEP, TRAIT_SOUL_EXAMINE, TRAIT_SEEDKNOW, TRAIT_CIVILIZEDBARBARIAN, TRAIT_BIGGUY, TRAIT_COUNTERCOUNTERSPELL, TRAIT_KEENEARS, TRAIT_HOLLOW_LIFE, TRAIT_NOPAIN, TRAIT_NOPAINSTUN, TRAIT_DARKVISION, TRAIT_NOHUNGER, TRAIT_ZOMBIE_IMMUNE, TRAIT_TOXIMMUNE, TRAIT_NOMOOD, TRAIT_ARCYNE_T4, TRAIT_INFINITE_ENERGY)

	advclass_cat_rolls = list(CTAG_STORYTELLER = 99)
	job_subclasses = list(
		/datum/advclass/storyteller
	)

/datum/advclass/storyteller
	name = "Storyteller"
	tutorial = "Техническая роль."
	category_tags = list(CTAG_STORYTELLER)
	subclass_stats = list(
		STATKEY_STR = 20,
		STATKEY_INT = 20,
		STATKEY_SPD = 20,
		STATKEY_PER = 20,
		STATKEY_LCK = 20,
		STATKEY_CON = 20,
		STATKEY_END = 20,
	)

	subclass_skills = list(
		/datum/skill/combat/swords = SKILL_LEVEL_LEGENDARY,
		/datum/skill/combat/knives = SKILL_LEVEL_LEGENDARY,
		/datum/skill/combat/unarmed = SKILL_LEVEL_LEGENDARY,
		/datum/skill/combat/wrestling = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/swimming = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/climbing = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/athletics = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/reading = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/cooking = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/crafting = SKILL_LEVEL_LEGENDARY,
		/datum/skill/labor/butchering = SKILL_LEVEL_LEGENDARY,
		/datum/skill/labor/farming = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/carpentry = SKILL_LEVEL_LEGENDARY, //apprentice to do some basic repairs around the inn if need be
		/datum/skill/misc/music = SKILL_LEVEL_LEGENDARY,
		/datum/skill/labor/lumberjacking = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/crafting = SKILL_LEVEL_LEGENDARY,
		/datum/skill/combat/guns = SKILL_LEVEL_LEGENDARY,
		/datum/skill/magic/arcane = SKILL_LEVEL_LEGENDARY,
		/datum/skill/craft/traps = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/stealing = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/sneaking = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_LEGENDARY
	)

/datum/outfit/job/storyteller
	name = "Storyteller"

/datum/outfit/job/storyteller/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/developer_invisibility)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/developer_freeze)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/developer_sleep)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/developer_teleport)

	r_hand = /obj/item/rogueweapon/sword/short/kazengun
	head = /obj/item/clothing/head/mariahat
	cloak = /obj/item/clothing/cloak/jandarms/alizeria/mariacloak
	backr = /obj/item/storage/backpack/rogue/satchel
	backl = /obj/item/gun/ballistic/revolver/grenadelauncher/aliz/riflealt
	armor = /obj/item/clothing/suit/roguetown/shirt/dress/alizeria/mariaarmor
	id = /obj/item/clothing/ring/fireproof
	shirt = /obj/item/clothing/suit/roguetown/shirt/dress/alizeria/mariashirt
	gloves = /obj/item/clothing/gloves/roguetown/alizeria/witchgloves
	beltr = /obj/item/quiver/mpylipistolalt
	belt = /obj/item/storage/belt/rogue/alizeria/mariabelt
	beltl = /obj/item/rogueweapon/scabbard/sword/kazengun/kodachi
	pants = /obj/item/clothing/under/roguetown/tights/alizeria/mariapants
	shoes = /obj/item/clothing/shoes/roguetown/boots/alizeria/mariaboots
	backpack_contents = list(
		/obj/item/roguekey/lord
	)