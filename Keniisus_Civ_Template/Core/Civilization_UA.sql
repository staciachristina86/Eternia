/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,											Kind			)
VALUES	('TRAIT_CIVILIZATION_KENI_DENMARK_UA',			'KIND_TRAIT'	),
		('MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'KIND_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_FREE_TECH',			'KIND_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_FREE_CIVIC',			'KIND_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_ATTACH_MODIFIER',		'KIND_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_ADJUST_FLANK',			'KIND_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_ADJUST_SUPPORT',		'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description											)
VALUES	('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'LOC_TRAIT_CIVILIZATION_KENI_DENMARK_UA_NAME',	'LOC_TRAIT_CIVILIZATION_KENI_DENMARK_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_KENI_DENMARK',	'TRAIT_CIVILIZATION_KENI_DENMARK_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,								ModifierId										)
VALUES	('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'MODIFIER_KENI_DENMARK_UA_BARRACKS_PRODUCTION'	),
		('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'MODIFIER_KENI_DENMARK_UA_STABLE_PRODUCTION'		),
		('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'MODIFIER_KENI_DENMARK_UA_GRANARY_PRODUCTION'		),
		('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'MODIFIER_KENI_DENMARK_UA_FORTAREATA_PRODUCTION'	),
		('TRAIT_CIVILIZATION_KENI_DENMARK_UA',	'MODIFIER_KENI_DENMARK_UA_ACADEMY_PRODUCTION'	);

-----------------------------------------------
-- EmergencyBuffs
-----------------------------------------------

INSERT INTO	EmergencyBuffs (EmergencyType, ModifierId)
SELECT DISTINCT
		EmergencyType,
		'MODIFIER_KENI_DENMARK_UA_FLANK_BONUS_ATTACH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyBuffs (EmergencyType, ModifierId)
SELECT DISTINCT
		EmergencyType,
		'MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS_ATTACH'
FROM	EmergencyAlliances;

-----------------------------------------------
-- EmergencyRewards
-----------------------------------------------

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		1,
		'MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_TECH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		1,
		'MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_CIVIC'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		0,
		'MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_TECH'
FROM	EmergencyAlliances;

INSERT INTO	EmergencyRewards (EmergencyType, OnSuccess, ModifierId)
SELECT DISTINCT
		EmergencyType,
		0,
		'MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_CIVIC'
FROM	EmergencyAlliances;

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,					EffectType										)
VALUES	('MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_BUILDING_YIELD_CHANGE'			),
		('MODTYPE_KENI_DENMARK_UA_FREE_CIVIC',			'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_GRANT_PLAYER_RANDOM_CIVIC'				),	
		('MODTYPE_KENI_DENMARK_UA_FREE_TECH',			'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_GRANT_PLAYER_RANDOM_TECHNOLOGY'			),
		('MODTYPE_KENI_DENMARK_UA_ATTACH_MODIFIER',		'COLLECTION_EMERGENCY_PLAYERS',	'EFFECT_ATTACH_MODIFIER'						),
		('MODTYPE_KENI_DENMARK_UA_ADJUST_FLANK',			'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_FLANKING_BONUS_MODIFIER'	),
		('MODTYPE_KENI_DENMARK_UA_ADJUST_SUPPORT',		'COLLECTION_PLAYER_UNITS',		'EFFECT_ADJUST_UNIT_SUPPORT_BONUS_MODIFIER'		);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,										ModifierType,									OwnerRequirementSetId,				SubjectRequirementSetId,			RunOnce,	Permanent	)
VALUES	('MODIFIER_KENI_DENMARK_UA_BARRACKS_PRODUCTION',		'MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'REQSET_KENI_DENMARK_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_STABLE_PRODUCTION',		'MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'REQSET_KENI_DENMARK_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_GRANARY_PRODUCTION',		'MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'REQSET_KENI_DENMARK_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_FORTAREATA_PRODUCTION',	'MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'REQSET_KENI_DENMARK_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_ACADEMY_PRODUCTION',		'MODTYPE_KENI_DENMARK_UA_BUILDING_PRODUCTION',	'REQSET_KENI_DENMARK_UA_AT_WAR',		NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_TECH',		'MODTYPE_KENI_DENMARK_UA_FREE_TECH',				NULL,								'REQSET_KENI_DENMARK_UA_IS_MEMBER',	1,			1			),
		('MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_CIVIC',		'MODTYPE_KENI_DENMARK_UA_FREE_CIVIC',			NULL,								'REQSET_KENI_DENMARK_UA_IS_MEMBER',	1,			1			),
		('MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_TECH',		'MODTYPE_KENI_DENMARK_UA_FREE_TECH',				NULL,								'REQSET_KENI_DENMARK_UA_IS_TARGET',	1,			1			),
		('MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_CIVIC',		'MODTYPE_KENI_DENMARK_UA_FREE_CIVIC',			NULL,								'REQSET_KENI_DENMARK_UA_IS_TARGET',	1,			1			),
		('MODIFIER_KENI_DENMARK_UA_FLANK_BONUS_ATTACH',		'MODTYPE_KENI_DENMARK_UA_ATTACH_MODIFIER',		NULL,								'REQSET_CVS_PLAYER_IS_ROMANIAN',	0,			0			),
		('MODIFIER_KENI_DENMARK_UA_FLANK_BONUS',				'MODTYPE_KENI_DENMARK_UA_ADJUST_FLANK',			NULL,								NULL,								0,			0			),
		('MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS_ATTACH',	'MODTYPE_KENI_DENMARK_UA_ATTACH_MODIFIER',		NULL,								'REQSET_CVS_PLAYER_IS_ROMANIAN',	0,			0			),
		('MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS',			'MODTYPE_KENI_DENMARK_UA_ADJUST_SUPPORT',		NULL,								NULL,								0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,							Value									)
VALUES	('MODIFIER_KENI_DENMARK_UA_BARRACKS_PRODUCTION',			'BuildingType',					'BUILDING_BARRACKS'						),
		('MODIFIER_KENI_DENMARK_UA_BARRACKS_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_KENI_DENMARK_UA_BARRACKS_PRODUCTION',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_STABLE_PRODUCTION',			'BuildingType',					'BUILDING_STABLE'						),
		('MODIFIER_KENI_DENMARK_UA_STABLE_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_KENI_DENMARK_UA_STABLE_PRODUCTION',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_GRANARY_PRODUCTION',			'BuildingType',					'BUILDING_GRANARY'						),
		('MODIFIER_KENI_DENMARK_UA_GRANARY_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_KENI_DENMARK_UA_GRANARY_PRODUCTION',			'Amount',						2										),
		('MODIFIER_KENI_DENMARK_UA_FORTAREATA_PRODUCTION',		'BuildingType',					'BUILDING_KENI_DENMARK_UI'				),
		('MODIFIER_KENI_DENMARK_UA_FORTAREATA_PRODUCTION',		'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_KENI_DENMARK_UA_FORTAREATA_PRODUCTION',		'Amount',						2										),
		('MODIFIER_KENI_DENMARK_UA_ACADEMY_PRODUCTION',			'BuildingType',					'BUILDING_MILITARY_ACADEMY'				),
		('MODIFIER_KENI_DENMARK_UA_ACADEMY_PRODUCTION',			'YieldType',					'YIELD_PRODUCTION'						),
		('MODIFIER_KENI_DENMARK_UA_ACADEMY_PRODUCTION',			'Amount',						3										),
		('MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_TECH',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_MEMBER_REWARD_CIVIC',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_TECH',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_TARGET_REWARD_CIVIC',			'Amount',						1										),
		('MODIFIER_KENI_DENMARK_UA_FLANK_BONUS_ATTACH',			'ModifierId',					'MODIFIER_KENI_DENMARK_UA_FLANK_BONUS'	),
		('MODIFIER_KENI_DENMARK_UA_FLANK_BONUS',					'Percent',						100										),
		('MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS_ATTACH',		'ModifierId',					'MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS'	),
		('MODIFIER_KENI_DENMARK_UA_SUPPORT_BONUS',				'Percent',						100										);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,					RequirementSetType			)
VALUES	('REQSET_KENI_DENMARK_UA_AT_WAR',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_KENI_DENMARK_UA_IS_MEMBER',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_KENI_DENMARK_UA_IS_TARGET',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,					RequirementId					)
VALUES	('REQSET_KENI_DENMARK_UA_AT_WAR',	'REQ_KENI_DENMARK_UA_AT_WAR'		),
		('REQSET_KENI_DENMARK_UA_IS_MEMBER',	'REQ_KENI_DENMARK_UA_IS_MEMBER'	),
		('REQSET_KENI_DENMARK_UA_IS_MEMBER',	'REQ_CVS_PLAYER_IS_ROMANIAN'	), -- Set in Civilization.sql
		('REQSET_KENI_DENMARK_UA_IS_TARGET',	'REQ_KENI_DENMARK_UA_IS_TARGET'	),
		('REQSET_KENI_DENMARK_UA_IS_TARGET',	'REQ_CVS_PLAYER_IS_ROMANIAN'	); -- Set in Civilization.sql

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType,									Inverse	)
VALUES	('REQ_KENI_DENMARK_UA_AT_WAR',		'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1		),
		('REQ_KENI_DENMARK_UA_IS_MEMBER',	'REQUIREMENT_PLAYER_IS_EMERGENCY_TARGET',			1		),
		('REQ_KENI_DENMARK_UA_IS_TARGET',	'REQUIREMENT_PLAYER_IS_EMERGENCY_TARGET',			0		);
