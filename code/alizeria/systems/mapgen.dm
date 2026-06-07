// Iceland map generation module for random stone and branch spawning

/datum/mapGeneratorModule/iceland_stones
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/floor/rogue/dirt, /turf/open/floor/rogue/snow, /turf/open/floor/rogue/grasscold)
	allowed_areas = list(/area/rogue/outdoors/woods/alizeria/iceland)
	spawnableAtoms = list(
		/obj/item/natural/stone = 10,
		/obj/item/grown/log/tree/stick = 10
	)