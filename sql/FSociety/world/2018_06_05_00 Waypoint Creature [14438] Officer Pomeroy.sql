/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Officer Pomeroy';
SET @ENTRY 		:= '14438';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '14492',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '0',  '0',  '-1',  '0',  '0',  '11',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '4',  '1',  '1',  '1',  '1',  '4.6',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', '18950'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 14438 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('14438', '0', '0', '0', '25', '0', '100', '1', '0', '0', '0', '0', '', '11', '41634', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Officer Pomeroy - On Respawn - Cast \'Invisibility and Stealth Detection\''); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984454, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8791.98', '744.517', '98.5191', '5.2139', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8791.98' AND `position_y` REGEXP '744.517' AND `position_z` REGEXP '98.5191' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '1', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8791.98' AND `position_y` REGEXP '744.517' AND `position_z` REGEXP '98.5191' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8791.98', '744.517', '98.5191', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8812.15', '738.472', '97.8381', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8830.81', '728.08', '98.3643', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8839.59', '723.241', '97.7003', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8844.19', '722.557', '97.5135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8846.86', '725.811', '97.5483', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8854.46', '742.389', '100.721', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8867.08', '758.161', '97.3816', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8858.7', '747.691', '100.09', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8867.08', '758.161', '97.3816', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8872.89', '759.063', '96.8358', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8878.06', '756.849', '96.4417', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8881.35', '757.905', '95.9752', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8899.59', '780.42', '89.6235', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8906.11', '789.175', '88.0052', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8906.12', '793.255', '87.5146', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8899.29', '798.613', '87.6671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8898.14', '812.682', '89.3044', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8897.64', '822.108', '91.49', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8899', '832.806', '93.8639', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8905.66', '842.79', '95.7772', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8915.88', '854.507', '97.1205', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8929.33', '858.376', '100.402', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8941.87', '862.293', '103.94', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8961.7', '861.372', '105.908', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8974.94', '855.859', '106.011', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8981.46', '845.043', '105.742', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8988.97', '837.08', '105.851', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8993.58', '828.012', '105.383', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8994.4', '818.293', '104.493', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8990.47', '797.905', '102.402', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8984', '786.214', '99.2054', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8971.41', '773.849', '96.1722', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8958.87', '769.747', '93.8667', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8942.21', '769.925', '90.3129', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8925.67', '776.995', '87.5824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8912.66', '788.337', '87.4396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8907.98', '787.854', '88.0846', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8900.26', '779.328', '89.7639', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8882.48', '756.003', '96.0678', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8877.78', '755.155', '96.5398', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8872.96', '758.995', '96.8278', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8869.48', '757.654', '97.0416', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8857.65', '740.483', '100.598', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8849.66', '725.911', '97.6571', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8843.38', '715.389', '97.6202', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8835.01', '696.599', '97.6427', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8827.22', '680.012', '97.4207', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8828.2', '677.165', '97.8273', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8836', '673.503', '98.4006', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-8845.13', '667.358', '97.8927', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8850.67', '661.948', '97.3407', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8861.62', '654.656', '96.3407', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8872.41', '648.339', '96.0509', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8877.12', '645.417', '96.0428', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8885.92', '640.234', '99.5225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8896.3', '634.474', '99.526', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-8913.21', '625.533', '99.5242', '0', '10000', '0', '0', '100', '0'), 
(@GUID, '59', '-8918.66', '622.625', '100.225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-8926.51', '621.535', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-8931.55', '628.326', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-8933.26', '627.243', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-8928.43', '616.533', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-8922.06', '606.464', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-8922.44', '616.783', '100.226', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-8918.45', '622.231', '100.225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-8913.33', '624.602', '99.5236', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-8895.8', '633.929', '99.5259', '0', '0', '0', '0', '100', '0'), 
(@GUID, '69', '-8886.15', '639.326', '99.5225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '70', '-8876.45', '644.658', '96.0485', '0', '0', '0', '0', '100', '0'), 
(@GUID, '71', '-8868.75', '643.75', '96.1664', '0', '0', '0', '0', '100', '0'), 
(@GUID, '72', '-8862.2', '641.198', '96.2195', '0', '0', '0', '0', '100', '0'), 
(@GUID, '73', '-8854.06', '642.747', '96.5945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '74', '-8844.64', '646.278', '96.7195', '0', '0', '0', '0', '100', '0'), 
(@GUID, '75', '-8840.22', '649.217', '98.0296', '0', '0', '0', '0', '100', '0'), 
(@GUID, '76', '-8831.67', '652.198', '98.0247', '0', '0', '0', '0', '100', '0'), 
(@GUID, '77', '-8825.58', '653.316', '98.025', '0', '0', '0', '0', '100', '0'), 
(@GUID, '78', '-8820.68', '651.988', '98.025', '0', '0', '0', '0', '100', '0'), 
(@GUID, '79', '-8816.14', '659.849', '98.0137', '0', '0', '0', '0', '100', '0'), 
(@GUID, '80', '-8825.2', '663.273', '98.0191', '0', '0', '0', '0', '100', '0'), 
(@GUID, '81', '-8827.67', '657.3', '98.0219', '0', '0', '0', '0', '100', '0'), 
(@GUID, '82', '-8832.18', '654.106', '98.0256', '0', '0', '0', '0', '100', '0'), 
(@GUID, '83', '-8839.73', '650.196', '98.0262', '0', '0', '0', '0', '100', '0'), 
(@GUID, '84', '-8844.79', '646.875', '96.7195', '0', '0', '0', '0', '100', '0'), 
(@GUID, '85', '-8846.81', '643.278', '96.5396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '86', '-8845.8', '637.014', '95.5987', '0', '0', '0', '0', '100', '0'), 
(@GUID, '87', '-8836.41', '624.498', '93.7934', '0', '0', '0', '0', '100', '0'), 
(@GUID, '88', '-8824.48', '616.141', '94.9529', '0', '0', '0', '0', '100', '0'), 
(@GUID, '89', '-8813.03', '605.033', '96.2867', '0', '0', '0', '0', '100', '0'), 
(@GUID, '90', '-8801.28', '591.116', '97.7241', '0', '0', '0', '0', '100', '0'), 
(@GUID, '91', '-8795.08', '589.691', '97.7597', '0', '0', '0', '0', '100', '0'), 
(@GUID, '92', '-8781.9', '597.009', '97.5592', '0', '0', '0', '0', '100', '0'), 
(@GUID, '93', '-8771.35', '606.927', '97.2751', '0', '0', '0', '0', '100', '0'), 
(@GUID, '94', '-8761.1', '618.109', '99.4827', '0', '0', '0', '0', '100', '0'), 
(@GUID, '95', '-8757.65', '631.413', '102.733', '0', '0', '0', '0', '100', '0'), 
(@GUID, '96', '-8760.83', '646.507', '103.97', '0', '0', '0', '0', '100', '0'), 
(@GUID, '97', '-8767.24', '659.741', '103.789', '0', '0', '0', '0', '100', '0'), 
(@GUID, '98', '-8772.75', '666.458', '103.414', '0', '0', '0', '0', '100', '0'), 
(@GUID, '99', '-8772.96', '670.351', '103.369', '0', '0', '0', '0', '100', '0'), 
(@GUID, '100', '-8740.38', '696.811', '99.2987', '0', '0', '0', '0', '100', '0'), 
(@GUID, '101', '-8739.2', '702.446', '98.8885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '102', '-8742.47', '707.642', '98.7501', '0', '0', '0', '0', '100', '0'), 
(@GUID, '103', '-8747.34', '713.675', '98.7536', '0', '0', '0', '0', '100', '0'), 
(@GUID, '104', '-8760.93', '730.528', '98.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '105', '-8776.99', '741.866', '99.6873', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8791.98' AND `position_y` REGEXP '744.517' AND `position_z` REGEXP '98.5191' AND `PhaseId` = '0' AND `map` = '0');
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
/* Step 1.2 Table `creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 14438;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('14438', '1', '2178', '0', '5284', '0', '0', '62285', '0', '0', '18019');

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

