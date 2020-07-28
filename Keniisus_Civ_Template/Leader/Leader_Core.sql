/*
	Leader
	Authors: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_KENI_HARALD',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName					)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	'LOC_CITY_NAME_KENI_DENMARK_1'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_KENI_HARALD',	'LOC_LEADER_KENI_HARALD_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_KENI_HARALD',	'LOC_PEDIA_LEADERS_PAGE_KENI_HARALD_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_KENI_HARALD',	'LEADER_KENI_HARALD_NEUTRAL',	'LEADER_KENI_HARALD_BACKGROUND',	0					);

-----------------------------------------------
-- Colors
-----------------------------------------------
/*
INSERT INTO	PlayerColors
		(Type,					Usage,		PrimaryColor,		 			SecondaryColor,					TextColor					)
VALUES	('LEADER_KENI_HARALD',	'Unique',	'COLOR_KENI_HARALD_PRIMARY',	'COLOR_KENI_HARALD_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_KENI_HARALD_PRIMARY',		'38,96,94,255'		),
		('COLOR_KENI_HARALD_SECONDARY',	'252,202,132,255'	);
*/
-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,				LeaderType,				SortIndex,	CityName						)
VALUES	('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_1'		),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_2'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_3'		),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_4'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_5'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_6'	),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_7'		),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_8'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_9'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_10'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_11'	),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_12'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_13'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_14'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_15'		),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_16'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_18'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_19'	),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_20'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_21'			),
		('CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	-1,			'LOC_CITY_NAME_KENI_DENMARK_22'			);
