/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 16/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Elemental Gate Bunny';
SET @ENTRY 		:= '48362';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '20570',  '11686',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '1',  '1',  '0',  '0',  '0',  '114',  '0',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '0',  '0',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '10',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '2',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 48362 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(1387, @ENTRY, '230', '1584', '1584', '2', '0', '0', '0', '-1', '11686', '0', '564.302', '-265.72', '-42.5068', '3.9619', '7200', '0', '0', '42', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1388, @ENTRY, '230', '1584', '1584', '2', '0', '0', '0', '-1', '11686', '0', '534.093', '-256.161', '-42.8589', '0.767945', '7200', '0', '0', '42', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(1389, @ENTRY, '230', '1584', '1584', '2', '0', '0', '0', '-1', '11686', '0', '593.4', '-291.203', '-42.3761', '1.64061', '7200', '0', '0', '42', '0', '0', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '564.302' AND `position_y` REGEXP '-265.72' AND `position_z` REGEXP '-42.5068' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '89907'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '564.302' AND `position_y` REGEXP '-265.72' AND `position_z` REGEXP '-42.5068' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '534.093' AND `position_y` REGEXP '-256.161' AND `position_z` REGEXP '-42.8589' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '89907'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '534.093' AND `position_y` REGEXP '-256.161' AND `position_z` REGEXP '-42.8589' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '593.4' AND `position_y` REGEXP '-291.203' AND `position_z` REGEXP '-42.3761' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, '0', '0', '0', '1', '0', '0', '0', '0', '89907'); 



/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '593.4' AND `position_y` REGEXP '-291.203' AND `position_z` REGEXP '-42.3761' AND `PhaseId` = '0' AND `map` = '230');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;


/* Step 2.1 Table  `creature_onkill_reputation */
DELETE FROM creature_onkill_reputation WHERE `creature_id` = @ENTRY;
/* Step 2.4 Table  `pickpocketing_loot_template */
DELETE FROM pickpocketing_loot_template WHERE  `entry` = @ENTRY;
/* Step 2.4 Table  `skinning_loot_template */
DELETE FROM skinning_loot_template WHERE  `entry` = @ENTRY;
/*
/*
*/
/*Skinning Loot Template Items Data: Id - Quality - SellPrice - ItemLevel - RequiredLevel - Name */
/*


/* Step 3.3 Table  `creature_summon_groups` */
DELETE FROM  `creature_summon_groups` WHERE `summonerId` = @ENTRY AND `summonerType` = 0;
/* Step 2.7 Table  `gossip_menu */
DELETE FROM gossip_menu WHERE  `MenuId` = 0;
/* Step 1.2 Table `gossip_menu_option_action */
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`= 0;
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 48362;
DELETE FROM npc_trainer WHERE `ID` = @ENTRY;
DELETE FROM npc_vendor WHERE  `entry` = @ENTRY;
/* Step 2.2 Table  `creature_queststarter */
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
/* Step 2.2 Table  `creature_questender */
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
/* Step 1.8 Table  `waypoints */
DELETE FROM waypoints WHERE  `entry` = @ENTRY;
/* Step 2.5 Table  `npc_spellclick_spells */
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
/* Step 1.7 Table  `creature_default_trainer */
DELETE FROM creature_default_trainer WHERE  `CreatureId` = @ENTRY;
/* Step 2.7 Table  `creature_template_scaling */
DELETE FROM creature_template_scaling WHERE  `Entry` = 48362;

