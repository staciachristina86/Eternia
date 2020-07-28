/*
	Config
	Authors: ChimpanG
*/

-----------------------------------------------
-- Players (Rise and Fall)
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_KENI_DENMARK', -- CivilizationType
		'LOC_CIVILIZATION_KENI_DENMARK_NAME', -- CivilizationName
		'ICON_CIVILIZATION_NORWAY', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_KENI_DENMARK_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_KENI_DENMARK_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_NORWAY', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_KENI_HARALD', -- LeaderType
		'LOC_LEADER_KENI_HARALD_NAME', -- LeaderName
		'ICON_LEADER_HARDRADA', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_KENI_HARALD_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_KENI_HARALD_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_HARDRADA' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Rise and Fall)
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 			LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	'UNIT_KENI_DENMARK_UU',		'ICON_UNIT_WARRIOR',		'LOC_UNIT_KENI_DENMARK_UU_NAME',		'LOC_UNIT_KENI_DENMARK_UU_DESCRIPTION',		10			),
		('Players:Expansion2_Players',	'CIVILIZATION_KENI_DENMARK',	'LEADER_KENI_HARALD',	'BUILDING_KENI_DENMARK_UI',	'ICON_BUILDING_GRANARY',	'LOC_BUILDING_KENI_DENMARK_UI_NAME',	'LOC_BUILDING_KENI_DENMARK_UI_DESCRIPTION',	20			);
/*
	Config
	Authors: ChimpanG
*/