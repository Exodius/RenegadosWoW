/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 8/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Officer Connelly';
SET @ENTRY 		:= '47688';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '35774',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  '',  '0',  '90',  '90',  '-1',  '0',  '0',  '11',  '0',  '1',  '1.14286',  '1',  '1',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '',  '0',  '3',  '1',  '4',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '0',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', '18950'); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 47688 AND `source_type`= 0;
/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984451, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '0', '-8537.17', '485.715', '101.37', '0.734958', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8537.17' AND `position_y` REGEXP '485.715' AND `position_z` REGEXP '101.37' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8537.17' AND `position_y` REGEXP '485.715' AND `position_z` REGEXP '101.37' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8537.17', '485.715', '101.37', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8536.56', '492.865', '100.133', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8540.9', '498.453', '99.213', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8541.72', '501.622', '98.8717', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8538.03', '504.599', '98.7083', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8524.11', '515.227', '98.4612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8505.37', '529.655', '98.2152', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8492.54', '541.25', '97.8199', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8481.97', '555.068', '98.0699', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8468.35', '568.253', '96.6907', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8450.76', '577.191', '94.7769', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8440.84', '575.649', '94.7481', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8425.85', '566.255', '94.0569', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8411.59', '564.665', '92.6951', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8400.56', '567.573', '92.1897', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8393.31', '578.253', '91.9218', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8394.19', '589.762', '92.7557', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8393.76', '602.628', '94.1421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8391.63', '611.922', '95.1294', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8382.95', '618.389', '95.6005', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8370.25', '620.304', '95.2612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8359.98', '620.759', '95.3054', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8353.75', '622.991', '95.3592', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8349.02', '621.993', '95.4842', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8341.32', '614.06', '99.6985', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8335.46', '607.59', '99.6977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8327.16', '596.281', '99.8535', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8318.69', '586.776', '99.6977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8316.87', '584.382', '100.579', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8312.68', '576.943', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8313.5', '573.623', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8318.56', '569.726', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8316.36', '567.441', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8307.78', '573.63', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8300.5', '581.413', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8300.45', '584.231', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8302.89', '582.809', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8309.14', '579.304', '100.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8315.89', '584.078', '100.889', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8318.22', '587.281', '99.7791', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8325.75', '597.342', '99.8882', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8335.04', '608.069', '99.6977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8339.45', '614.009', '99.6977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8345.36', '625.7', '95.5878', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8350.48', '635.085', '95.39', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8358.39', '644.403', '95.2493', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8352.2', '637.116', '95.3594', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8358.39', '644.403', '95.2493', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8361.52', '650.35', '97.2977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8363.18', '656.373', '97.4446', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-8365.07', '665.799', '97.4452', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8360.75', '669.905', '97.4532', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8361.74', '674.707', '97.2977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8368.19', '675.514', '97.2977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8373.42', '671.715', '97.2977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8372.38', '667.596', '97.4209', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8366.72', '665.349', '97.4295', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-8363.92', '656.358', '97.4459', '0', '0', '0', '0', '100', '0'), 
(@GUID, '59', '-8362.91', '650.064', '97.2977', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-8363.02', '644.271', '95.39', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-8364.11', '640.033', '95.265', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-8368.6', '639.241', '95.1106', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-8377.71', '645.535', '95.5123', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-8386.41', '657.082', '95.0732', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-8394.16', '667.229', '94.9614', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-8403.76', '673.531', '95.1658', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-8414.02', '674.931', '95.1029', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-8422.56', '668.96', '94.7573', '0', '0', '0', '0', '100', '0'), 
(@GUID, '69', '-8430.56', '662.066', '93.8515', '0', '0', '0', '0', '100', '0'), 
(@GUID, '70', '-8439.5', '656.125', '93.2424', '0', '0', '0', '0', '100', '0'), 
(@GUID, '71', '-8451.38', '648.007', '92.6651', '0', '0', '0', '0', '100', '0'), 
(@GUID, '72', '-8457.17', '642.253', '92.062', '0', '0', '0', '0', '100', '0'), 
(@GUID, '73', '-8469.47', '634.012', '93.1783', '0', '0', '0', '0', '100', '0'), 
(@GUID, '74', '-8475.69', '626.087', '94.0383', '0', '0', '0', '0', '100', '0'), 
(@GUID, '75', '-8473.24', '615.181', '94.8563', '0', '0', '0', '0', '100', '0'), 
(@GUID, '76', '-8465.15', '603.821', '94.5598', '0', '0', '0', '0', '100', '0'), 
(@GUID, '77', '-8457.48', '595.472', '94.4981', '0', '0', '0', '0', '100', '0'), 
(@GUID, '78', '-8454.13', '587.557', '94.6231', '0', '0', '0', '0', '100', '0'), 
(@GUID, '79', '-8458.14', '580.712', '95.0001', '0', '0', '0', '0', '100', '0'), 
(@GUID, '80', '-8465.71', '574.448', '96.3244', '0', '0', '0', '0', '100', '0'), 
(@GUID, '81', '-8477.44', '569.247', '97.1792', '0', '0', '0', '0', '100', '0'), 
(@GUID, '82', '-8484.4', '564.969', '97.7111', '0', '0', '0', '0', '100', '0'), 
(@GUID, '83', '-8493.89', '557.54', '98.1949', '0', '0', '0', '0', '100', '0'), 
(@GUID, '84', '-8501.89', '549.012', '98.0955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '85', '-8506.64', '540.038', '97.8614', '0', '0', '0', '0', '100', '0'), 
(@GUID, '86', '-8509.14', '532.521', '98.2112', '0', '0', '0', '0', '100', '0'), 
(@GUID, '87', '-8525.86', '517.418', '98.4612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '88', '-8539.79', '506.809', '98.4809', '0', '0', '0', '0', '100', '0'), 
(@GUID, '89', '-8543.22', '503.582', '98.5805', '0', '0', '0', '0', '100', '0'), 
(@GUID, '90', '-8546.27', '504.285', '98.3128', '0', '0', '0', '0', '100', '0'), 
(@GUID, '91', '-8552.86', '513.375', '99.0213', '0', '0', '0', '0', '100', '0'), 
(@GUID, '92', '-8564.4', '530.95', '101.323', '0', '0', '0', '0', '100', '0'), 
(@GUID, '93', '-8573.39', '540.646', '101.968', '0', '0', '0', '0', '100', '0'), 
(@GUID, '94', '-8579.7', '542.667', '102.158', '0', '0', '0', '0', '100', '0'), 
(@GUID, '95', '-8584.5', '541', '102.567', '0', '0', '0', '0', '100', '0'), 
(@GUID, '96', '-8598.79', '529.497', '106.34', '0', '0', '0', '0', '100', '0'), 
(@GUID, '97', '-8610.87', '517.846', '104.076', '0', '0', '0', '0', '100', '0'), 
(@GUID, '98', '-8611.46', '512.5', '103.638', '0', '0', '0', '0', '100', '0'), 
(@GUID, '99', '-8611.86', '508.554', '103.763', '0', '0', '0', '0', '100', '0'), 
(@GUID, '100', '-8614.5', '505.144', '103.211', '0', '0', '0', '0', '100', '0'), 
(@GUID, '101', '-8632.28', '491.085', '102.735', '0', '0', '0', '0', '100', '0'), 
(@GUID, '102', '-8643.64', '482.212', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '103', '-8648.39', '481.668', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '104', '-8650.54', '484.851', '102.634', '0', '0', '0', '0', '100', '0'), 
(@GUID, '105', '-8656.46', '492.122', '101.669', '0', '0', '0', '0', '100', '0'), 
(@GUID, '106', '-8663.04', '497.024', '100.959', '0', '0', '0', '0', '100', '0'), 
(@GUID, '107', '-8669.12', '497.146', '100.356', '0', '0', '0', '0', '100', '0'), 
(@GUID, '108', '-8677.85', '491.028', '98.2947', '0', '0', '0', '0', '100', '0'), 
(@GUID, '109', '-8683.89', '484.406', '96.5509', '0', '0', '0', '0', '100', '0'), 
(@GUID, '110', '-8697.83', '472.554', '95.4739', '0', '0', '0', '0', '100', '0'), 
(@GUID, '111', '-8705.07', '465.991', '96.313', '0', '0', '0', '0', '100', '0'), 
(@GUID, '112', '-8712.88', '458.28', '97.2671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '113', '-8706.3', '464.773', '96.5137', '0', '0', '0', '0', '100', '0'), 
(@GUID, '114', '-8712.88', '458.28', '97.2671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '115', '-8718.2', '451.398', '97.3887', '0', '0', '0', '0', '100', '0'), 
(@GUID, '116', '-8721.73', '441.677', '97.5623', '0', '0', '0', '0', '100', '0'), 
(@GUID, '117', '-8723.21', '429.755', '98.1684', '0', '0', '0', '0', '100', '0'), 
(@GUID, '118', '-8725.3', '418.776', '97.9724', '0', '0', '0', '0', '100', '0'), 
(@GUID, '119', '-8727.08', '410.024', '97.8208', '0', '0', '0', '0', '100', '0'), 
(@GUID, '120', '-8722.47', '404.505', '97.9458', '0', '0', '0', '0', '100', '0'), 
(@GUID, '121', '-8710.56', '403.029', '99.3208', '0', '0', '0', '0', '100', '0'), 
(@GUID, '122', '-8699.34', '397.847', '101.562', '0', '0', '0', '0', '100', '0'), 
(@GUID, '123', '-8683.92', '396.082', '102.312', '0', '0', '0', '0', '100', '0'), 
(@GUID, '124', '-8673.88', '400.115', '103.519', '0', '0', '0', '0', '100', '0'), 
(@GUID, '125', '-8660.58', '409.536', '103.151', '0', '0', '0', '0', '100', '0'), 
(@GUID, '126', '-8650.53', '420.29', '102.108', '0', '0', '0', '0', '100', '0'), 
(@GUID, '127', '-8642.07', '430.276', '101.676', '0', '0', '0', '0', '100', '0'), 
(@GUID, '128', '-8635.19', '439.024', '102.59', '0', '0', '0', '0', '100', '0'), 
(@GUID, '129', '-8632.44', '449.168', '102.582', '0', '0', '0', '0', '100', '0'), 
(@GUID, '130', '-8634.58', '461.438', '102.376', '0', '0', '0', '0', '100', '0'), 
(@GUID, '131', '-8641.52', '474.212', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '132', '-8643.48', '476.837', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '133', '-8642.04', '480.009', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '134', '-8630.47', '488.656', '102.742', '0', '0', '0', '0', '100', '0'), 
(@GUID, '135', '-8613.46', '502.352', '103.263', '0', '0', '0', '0', '100', '0'), 
(@GUID, '136', '-8608.71', '505.637', '103.763', '0', '0', '0', '0', '100', '0'), 
(@GUID, '137', '-8603.57', '503.875', '103.888', '0', '0', '0', '0', '100', '0'), 
(@GUID, '138', '-8594.86', '495.125', '104.036', '0', '0', '0', '0', '100', '0'), 
(@GUID, '139', '-8583.24', '480.342', '104.388', '0', '0', '0', '0', '100', '0'), 
(@GUID, '140', '-8574.08', '471.24', '104.388', '0', '0', '0', '0', '100', '0'), 
(@GUID, '141', '-8566.83', '467.047', '104.806', '0', '0', '0', '0', '100', '0'), 
(@GUID, '142', '-8557.75', '463.396', '104.674', '0', '0', '0', '0', '100', '0'), 
(@GUID, '143', '-8549.86', '461.328', '104.674', '0', '0', '0', '0', '100', '0'), 
(@GUID, '144', '-8543.8', '459.207', '104.734', '0', '0', '0', '0', '100', '0'), 
(@GUID, '145', '-8533.68', '446.269', '105.469', '0', '0', '0', '0', '100', '0'), 
(@GUID, '146', '-8523.3', '429.806', '105.535', '0', '0', '0', '0', '100', '0'), 
(@GUID, '147', '-8513.21', '416.872', '110.999', '0', '0', '0', '0', '100', '0'), 
(@GUID, '148', '-8504.67', '406.91', '115.689', '0', '0', '0', '0', '100', '0'), 
(@GUID, '149', '-8504.19', '396.72', '115.719', '0', '0', '0', '0', '100', '0'), 
(@GUID, '150', '-8506.61', '389.726', '115.747', '0', '0', '0', '0', '100', '0'), 
(@GUID, '151', '-8510.12', '384.946', '117.755', '0', '0', '0', '0', '100', '0'), 
(@GUID, '152', '-8517.29', '377.455', '122.626', '0', '0', '0', '0', '100', '0'), 
(@GUID, '153', '-8522.8', '372.266', '125.6', '0', '0', '0', '0', '100', '0'), 
(@GUID, '154', '-8528.19', '366.908', '125.595', '0', '0', '0', '0', '100', '0'), 
(@GUID, '155', '-8530.16', '361.569', '125.591', '0', '0', '0', '0', '100', '0'), 
(@GUID, '156', '-8528.74', '351.983', '125.602', '0', '0', '0', '0', '100', '0'), 
(@GUID, '157', '-8526.82', '348.738', '125.749', '0', '0', '0', '0', '100', '0'), 
(@GUID, '158', '-8523.46', '343.047', '128.855', '0', '0', '0', '0', '100', '0'), 
(@GUID, '159', '-8517.5', '335.217', '133.524', '0', '0', '0', '0', '100', '0'), 
(@GUID, '160', '-8513.33', '330.372', '135.688', '0', '0', '0', '0', '100', '0'), 
(@GUID, '161', '-8505.35', '326.436', '135.71', '0', '0', '0', '0', '100', '0'), 
(@GUID, '162', '-8489.11', '327.042', '135.71', '0', '0', '0', '0', '100', '0'), 
(@GUID, '163', '-8469.29', '332.819', '135.668', '0', '0', '0', '0', '100', '0'), 
(@GUID, '164', '-8452.29', '344.519', '135.927', '0', '0', '0', '0', '100', '0'), 
(@GUID, '165', '-8438.04', '358.649', '135.609', '0', '0', '0', '0', '100', '0'), 
(@GUID, '166', '-8431.4', '372.465', '135.288', '0', '0', '0', '0', '100', '0'), 
(@GUID, '167', '-8424.31', '389.486', '135.704', '0', '0', '0', '0', '100', '0'), 
(@GUID, '168', '-8423.73', '401.854', '135.703', '0', '0', '0', '0', '100', '0'), 
(@GUID, '169', '-8429.07', '411.587', '131.285', '0', '0', '0', '0', '100', '0'), 
(@GUID, '170', '-8436.89', '421.465', '125.605', '0', '0', '0', '0', '100', '0'), 
(@GUID, '171', '-8443.25', '424.552', '125.582', '0', '0', '0', '0', '100', '0'), 
(@GUID, '172', '-8453.08', '426.085', '125.579', '0', '0', '0', '0', '100', '0'), 
(@GUID, '173', '-8460.42', '422.293', '125.59', '0', '0', '0', '0', '100', '0'), 
(@GUID, '174', '-8466.73', '418.229', '123.426', '0', '0', '0', '0', '100', '0'), 
(@GUID, '175', '-8473.74', '414.503', '119.735', '0', '0', '0', '0', '100', '0'), 
(@GUID, '176', '-8482.37', '411.259', '115.735', '0', '0', '0', '0', '100', '0'), 
(@GUID, '177', '-8490.9', '408.851', '115.711', '0', '0', '0', '0', '100', '0'), 
(@GUID, '178', '-8499.15', '411.257', '115.689', '0', '0', '0', '0', '100', '0'), 
(@GUID, '179', '-8507.8', '421.292', '110.955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '180', '-8518.65', '434.007', '105.666', '0', '0', '0', '0', '100', '0'), 
(@GUID, '181', '-8531.3', '448.389', '105.445', '0', '0', '0', '0', '100', '0'), 
(@GUID, '182', '-8541.12', '461.696', '104.722', '0', '0', '0', '0', '100', '0'), 
(@GUID, '183', '-8543.95', '469.842', '104.59', '0', '0', '0', '0', '100', '0'), 
(@GUID, '184', '-8541.98', '476.555', '103.34', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8537.17' AND `position_y` REGEXP '485.715' AND `position_z` REGEXP '101.37' AND `PhaseId` = '0' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 47688;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('47688', '1', '2178', '0', '5284', '0', '0', '62285', '0', '0', '18019');

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

