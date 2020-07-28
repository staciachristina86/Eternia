/*
	UU
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,										Kind			)
VALUES	('TRAIT_CIVILIZATION_KENI_DENMARK_UU',		'KIND_TRAIT'	),
		('UNIT_KENI_DENMARK_UU',						'KIND_UNIT'		),
		('ABILITY_KENI_DENMARK_UU',					'KIND_ABILITY'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_KENI_DENMARK_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,						Tag						)
VALUES	('UNIT_KENI_DENMARK_UU',		'CLASS_KENI_DENMARK_UU'	),
		('ABILITY_KENI_DENMARK_UU',	'CLASS_KENI_DENMARK_UU'	);

INSERT INTO TypeTags (Type,		Tag)
SELECT 	'UNIT_KENI_DENMARK_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_WARRIOR';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,								Name							)
VALUES	('TRAIT_CIVILIZATION_KENI_DENMARK_UU',	'LOC_UNIT_KENI_DENMARK_UU_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType							)
VALUES	('CIVILIZATION_KENI_DENMARK',	'TRAIT_CIVILIZATION_KENI_DENMARK_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_KENI_DENMARK_UU',	-- UnitType
		'LOC_UNIT_KENI_DENMARK_UU_NAME',	-- Name
		'LOC_UNIT_KENI_DENMARK_UU_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_KENI_DENMARK_UU', -- TraitType
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		RangedCombat,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_WARRIOR';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_KENI_DENMARK_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_WARRIOR';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_KENI_DENMARK_UU',		AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_WARRIOR';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,		ReplacesUnitType	)
VALUES	('UNIT_KENI_DENMARK_UU',	'UNIT_WARRIOR'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,			Name,								Description									)
VALUES	('ABILITY_KENI_DENMARK_UU',	'LOC_ABILITY_KENI_DENMARK_UU_NAME',	'LOC_ABILITY_KENI_DENMARK_UU_DESCRIPTION'	);

