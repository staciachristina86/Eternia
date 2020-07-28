/*
	UI
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------		

INSERT INTO Types	
		(Type,									Kind			)
VALUES	('BUILDING_KENI_DENMARK_UI',	'KIND_TRAIT'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,								Name								)
VALUES	('BUILDING_KENI_DENMARK_UI',	'LOC_BUILDING_KENI_DENMARK_UI_NAME'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(TraitType,								CivilizationType			)
VALUES	('BUILDING_KENI_DENMARK_UI',	'CIVILIZATION_KENI_DENMARK'	);

-----------------------------------------------
-- Buildings
-----------------------------------------------

INSERT INTO Buildings	(
		BuildingType,
		Name,
		Description,
		TraitType,
		PrereqTech,
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
		)
SELECT	'BUILDING_KENI_DENMARK_UI', -- BuildingType
		'LOC_BUILDING_KENI_DENMARK_UI_NAME', -- Name
		'LOC_BUILDING_KENI_DENMARK_UI_DESCRIPTION', -- Description
		'BUILDING_KENI_DENMARK_UI', -- TraitType
		'TECH_CASTLES', -- PrereqTech
		PrereqCivic,
		Cost,
		PrereqDistrict,
		Housing,
		PurchaseYield,
		Maintenance,
		CitizenSlots,
		OuterDefenseStrength,
		DefenseModifier,
		AdvisorType
FROM	Buildings
WHERE	BuildingType = 'BUILDING_GRANARY';
/*
-----------------------------------------------
-- BuildingReplaces
-----------------------------------------------

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,		ReplacesBuildingType	)
VALUES	('BUILDING_KENI_DENMARK_UI',	'BUILDING_GRANARY'		);
*/

-----------------------------------------------
-- Building_YieldChanges
-----------------------------------------------

INSERT INTO Building_YieldChanges
		(BuildingType,				YieldType,			YieldChange	)
VALUES	('BUILDING_KENI_DENMARK_UI',	'YIELD_FOOD',	3			),	
		('BUILDING_KENI_DENMARK_UI',	'YIELD_GOLD',	2			);
