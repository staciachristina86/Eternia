/*
	Agenda
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO Types
		(Type,							Kind			)
VALUES  ('TRAIT_AGENDA_KENI_HARALD',	'KIND_TRAIT'	);

-----------------------------------------------
-- Agendas
-----------------------------------------------

INSERT INTO Agendas
		(AgendaType,			Name,							Description								)
VALUES 	('AGENDA_KENI_HARALD',	'LOC_AGENDA_KENI_HARALD_NAME',	'LOC_AGENDA_KENI_HARALD_DESCRIPTION'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits				
		(TraitType,						Name,							Description								)
VALUES	('TRAIT_AGENDA_KENI_HARALD',	'LOC_AGENDA_KENI_HARALD_NAME',	'LOC_AGENDA_KENI_HARALD_DESCRIPTION'	);

-----------------------------------------------
-- AgendaTraits
-----------------------------------------------

INSERT INTO AgendaTraits
		(AgendaType,			TraitType					)
VALUES 	('AGENDA_KENI_HARALD',	'TRAIT_AGENDA_KENI_HARALD'	);

-----------------------------------------------
-- HistoricalAgendas
-----------------------------------------------

INSERT INTO HistoricalAgendas
		(LeaderType,			AgendaType				)
VALUES 	('LEADER_KENI_HARALD',	'AGENDA_KENI_HARALD'	);

-----------------------------------------------
-- ExclusiveAgendas
-----------------------------------------------

INSERT INTO ExclusiveAgendas
		(AgendaOne,				AgendaTwo				)
VALUES 	('AGENDA_KENI_HARALD',	'AGENDA_STANDING_ARMY'	),
		('AGENDA_KENI_HARALD',	'AGENDA_DARWINIST'		),
		('AGENDA_KENI_HARALD',	'AGENDA_PILLAGER'		);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,						ModifierId								)
VALUES	('TRAIT_AGENDA_KENI_HARALD',	'AGENDA_MODIFIER_KENI_HARALD_UNHAPPY'	),
		('TRAIT_AGENDA_KENI_HARALD',	'AGENDA_MODIFIER_KENI_HARALD_HAPPY'	);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers	
		(ModifierId,								ModifierType,									SubjectRequirementSetId			)
VALUES	('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_KENI_HARALD_UNHAPPY'	),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_KENI_HARALD_HAPPY'		);

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,								Context,	Text								)
VALUES	('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,								Name,							Value												)
VALUES	('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'InitialValue',					-5													),
		('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'IncrementValue',				-1													),
		('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'IncrementTurns',				-10													),
		('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'MaxValue',						-25													),
		('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_KENI_HARALD_REASON_ANY'	),
		('AGENDA_MODIFIER_KENI_HARALD_UNHAPPY',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KENI_HARALD_UNHAPPY'			),
	
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'InitialValue',					5													),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'IncrementValue',				1													),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'IncrementTurns',				10													),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'MaxValue',						12													),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_KENI_HARALD_REASON_ANY'		),
		('AGENDA_MODIFIER_KENI_HARALD_HAPPY',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KENI_HARALD_HAPPY'				);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType			)
VALUES	('REQSET_KENI_HARALD_UNHAPPY',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_KENI_HARALD_HAPPY',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId						)
VALUES	('REQSET_KENI_HARALD_UNHAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_KENI_HARALD_UNHAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_KENI_HARALD_UNHAPPY',	'REQUIRES_HAS_LOW_STANDING_ARMY'	),
		('REQSET_KENI_HARALD_UNHAPPY',	'REQUIRES_NEIGHBOR_CIVS'			),
		('REQSET_KENI_HARALD_HAPPY',	'REQUIRES_MAJOR_CIV_OPPONENT'		),
		('REQSET_KENI_HARALD_HAPPY',	'REQUIRES_MET_10_TURNS_AGO'			),
		('REQSET_KENI_HARALD_HAPPY',	'REQUIRES_HAS_HIGH_PILLAGE'			);
