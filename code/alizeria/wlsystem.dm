// ¬À —»—“≈Ã¿

GLOBAL_LIST_INIT(landowner_whitelist, list(
	"ivaxan",
	"vladegeg",
	"blazeba",
	"thisisadvokat",
	"moksii",
	"pauchekdio",
	"lorki",
	"elite1323",
	"honkhonk2",
	"gleb31",
	"fawl",
	"bynoob",
	"normcheliksi",
	"errakoksta",
	"dajehibus",
	"bratoksashok",
	"zmiksontheggreat",
	"cila",
	"variannn",
	"alexanderg5",
	"ghostsanya228",
	"blub28",
	"barka",
	"penot1971",
	"yukiharathotg",
	"lazur_azur",
	"reilina",
	"blockbatr",
	"nemohukto",
	"myhungryboy",
	"lieeater",
	"jubothoe",
	"tempest5251",
	"illa3000",
	"arion1234",
	"sloak",
	"devolgen",
	"alexfaf",
	"savel8",
	"gunkrest",
	"leroygarn",
	"1moth2",
	"mogetopenci",
	"lechis",
	"metaslavery",
	"tabyret29",
	"rodion09",
	"namenlos66",
	"sergoabchihbovich",
	"atomas",
	"mrbav",
	"gardelin0",
	"sneeek",
	"sarov",
	"illa3000",
	"tabyret29",
	"tempest5251",
	"lazurazur",
	"pauchekdio",
	"imm0ral",
	"elite1323",
	"misteran",
	"sonetto",
	"dragontea",
	"sikerume",
	"raidentempest",
	"pavlasprotopas",
	"2vitamin2",
	"doxom",
	"flexok",
	"loremaster2",
	"fedor1545",
	"chaosrebell",
	"sarelam",
	"kaifaskain13",
	"diadokh",
	"fatfat",
	"merder12",
	"binarg",
	"deylan",
	"oneofnoobs",
	"flaitsas",
	"qqtie",
	"drifter1",
	"qwxizx",
	"evilwithclaws",
	"hotsosi",
	"brunoru",
	"barsua",
	"samcresh",
	"sekonda",
	"hagi6atop835",
	"kek123456781",
	"nikolaisshh",
	"spiritgatsu",
	"vanaim",
	"coontime",
	"dikiybonor",
	"taweike",
	"limbosans",
	"gardelin0",
	"sheetofseaweed",
	"sneeek",
	"sarov",
	"secretivedemon",
	"kimesik",
	"irontom",
	"karaspidoras",
	"floggy",
	"gear5",
))

/datum/job/roguetown/lord/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/marshgen/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/capo/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/ojandarme/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/ins/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/jandarme/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/lguard/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/marshal/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/priest/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/martyr/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/hand/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/magician/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/niteman/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/mercenary/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/////////////////////////////////////////////

/datum/job/roguetown/darkwitch/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/eger/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/expeditor/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/aservant/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/master/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/commander/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/storyteller/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/supplier/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/ntailor/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/tavernier/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/adventurer/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE

/datum/job/roguetown/druid/special_job_check(mob/dead/new_player/player)
	if(!player)
		return FALSE
	if(!player.ckey)
		return FALSE
	if(!(player.ckey in GLOB.landowner_whitelist))
		return FALSE
	return TRUE