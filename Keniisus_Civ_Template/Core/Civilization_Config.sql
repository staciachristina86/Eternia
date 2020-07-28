/*
	Civilization
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind				)
VALUES	('CIVILIZATION_KENI_DENMARK',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,				Name,									Description,								Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity			)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LOC_CIVILIZATION_KENI_DENMARK_NAME',	'LOC_CIVILIZATION_KENI_DENMARK_DESCRIPTION',	'LOC_CIVILIZATION_KENI_DENMARK_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_EURO' 	);

-----------------------------------------------
-- NamedMountains
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,			Name							)
VALUES	('NAMED_MOUNTAIN_ALMAJ',	'LOC_NAMED_MOUNTAIN_ALMAJ'		),
		('NAMED_MOUNTAIN_BIHOR',	'LOC_NAMED_MOUNTAIN_BIHOR'		),
		('NAMED_MOUNTAIN_BUCEGI',	'LOC_NAMED_MOUNTAIN_BUCEGI'		),
		('NAMED_MOUNTAIN_FAGARAS',	'LOC_NAMED_MOUNTAIN_FAGARAS'	),
		('NAMED_MOUNTAIN_GODEANU',	'LOC_NAMED_MOUNTAIN_GODEANU'	),
		('NAMED_MOUNTAIN_RETEZAT',	'LOC_NAMED_MOUNTAIN_RETEZAT'	),
		('NAMED_MOUNTAIN_VRANCEA',	'LOC_NAMED_MOUNTAIN_VRANCEA'	),
		('NAMED_MOUNTAIN_SUREANU',	'LOC_NAMED_MOUNTAIN_SUREANU'	),
		('NAMED_MOUNTAIN_TARCU',	'LOC_NAMED_MOUNTAIN_TARCU'		);

-----------------------------------------------
-- NamedMountainCivilizations
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,				NamedMountainType				)
VALUES	('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_CARPATHIANS'	),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_ALMAJ'			),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_BIHOR'			),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_BUCEGI'			),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_FAGARAS'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_GODEANU'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_RETEZAT'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_VRANCEA'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_SUREANU'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_MOUNTAIN_TARCU'			);

-----------------------------------------------
-- NamedRivers
-----------------------------------------------

REPLACE INTO NamedRivers
		(NamedRiverType,			Name						)
VALUES	('NAMED_RIVER_MURES',		'LOC_NAMED_RIVER_MURES'		),
		('NAMED_RIVER_PRUT',		'LOC_NAMED_RIVER_PRUT'		),
		('NAMED_RIVER_OLT',			'LOC_NAMED_RIVER_OLT'		),
		('NAMED_RIVER_SIRET',		'LOC_NAMED_RIVER_SIRET'		),
		('NAMED_RIVER_IALOMITA',	'LOC_NAMED_RIVER_IALOMITA'	),
		('NAMED_RIVER_SOMES',		'LOC_NAMED_RIVER_SOMES'		),
		('NAMED_RIVER_ARGES',		'LOC_NAMED_RIVER_ARGES'		),
		('NAMED_RIVER_JIU',			'LOC_NAMED_RIVER_JIU'		),
		('NAMED_RIVER_BUZAU',		'LOC_NAMED_RIVER_BUZAU'		),
		('NAMED_RIVER_DAMBOVITA',	'LOC_NAMED_RIVER_DAMBOVITA'	);

-----------------------------------------------
-- NamedRiverCivilizations
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,				NamedRiverType			)
VALUES	('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_DANUBE'	),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_MURES'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_PRUT'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_OLT'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_SIRET'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_IALOMITA'	),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_SOMES'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_ARGES'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_JIU'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_BUZAU'		),
		('CIVILIZATION_KENI_DENMARK',	'NAMED_RIVER_DAMBOVITA'	);

-----------------------------------------------
-- NamedDeserts
-----------------------------------------------

REPLACE INTO NamedDeserts
		(NamedDesertType,			Name						)
VALUES	('NAMED_DESERT_OLTENIA',	'LOC_NAMED_DESERT_OLTENIA'	);

-----------------------------------------------
-- NamedDesertCivilizations
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,				NamedDesertType			)
VALUES	('CIVILIZATION_KENI_DENMARK',	'NAMED_DESERT_OLTENIA'	);

-----------------------------------------------
-- NamedVolcanoes
-----------------------------------------------

REPLACE INTO NamedVolcanoes
		(NamedVolcanoType,			Name							)
VALUES	('NAMED_VOLCANO_CIOMADUL',	'LOC_NAMED_VOLCANO_CIOMADUL'	);

-----------------------------------------------
-- NamedVolcanoCivilizations
-----------------------------------------------

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,				NamedVolcanoType			)
VALUES	('CIVILIZATION_KENI_DENMARK',	'NAMED_VOLCANO_CIOMADUL'	);

-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,				CityName						)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_1'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_2'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_3'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_4'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_5'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_6'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_7'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_8'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_9'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_10'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_111'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_12'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_13'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_14'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_15'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_16'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_17'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_18'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_19'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_20'			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_21'		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITY_NAME_KENI_DENMARK_22'			);
		
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,							Female	)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_1',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_2',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_3',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_4',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_5',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_6',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_7',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_8',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_9',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_MALE_10',		0 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_1',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_2',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_3',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_4',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_5',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_6',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_7',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_8',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_9',		1 		),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CITIZEN_KENI_DENMARK_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,								SortIndex	)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_KENI_DENMARK_LOCATION',		10			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_KENI_DENMARK_SIZE',			20			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_KENI_DENMARK_POPULATION',	30			),
		('CIVILIZATION_KENI_DENMARK',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_KENI_DENMARK_CAPITAL',		40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_KENI_DENMARK',	'TERRAIN_GRASS_MOUNTAIN',	3		),
		('CIVILIZATION_KENI_DENMARK',	'TERRAIN_GRASS_HILLS',		5		);

INSERT INTO	StartBiasFeatures
		(CivilizationType,				FeatureType,		Tier	)
VALUES	('CIVILIZATION_KENI_DENMARK',	'FEATURE_FOREST',	5		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_CVS_PLAYER_IS_ROMANIAN',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_LEADER_IS_ROMANIAN',	'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_PLAYER_IS_ROMANIAN',	'REQ_CVS_PLAYER_IS_ROMANIAN'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,					RequirementType						)
VALUES	('REQ_CVS_PLAYER_IS_ROMANIAN',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,					Name,				Value							)
VALUES	('REQ_CVS_PLAYER_IS_ROMANIAN',	'RequirementSetId', 'REQSET_CVS_LEADER_IS_ROMANIAN'	);

/*
-----------------------------------------------
-- Support for Alternative Leaders
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_CVS_LEADER_IS_ROMANIAN',	'REQ_CVS_LEADER_IS_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value					)
VALUES	('REQ_CVS_LEADER_IS_LEADERNAME',	'LeaderType',	'LEADER_CVS_LEADERNAME'	);

*/