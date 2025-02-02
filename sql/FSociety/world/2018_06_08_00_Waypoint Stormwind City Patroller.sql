/*
SQL FSocietyWoW				  
Desarrollado por:
Fecha: 7/5/118
### Scripts Privados / Derechos Reservados FSocietyWoW Dev Team ########
### Datos SQL --------------------------------------------->*/
SET @CREATURE  	:= 'Stormwind City Patroller';
SET @ENTRY 		:= '1976';
/*SET @MAP   		:= 530;       *//*(Outland)*/
/*SET @ZONE  		:= 6455;      *//*(Sunstrider Isle)*/
/*SET @AREA  		:= 3431;      *//*(Sunstrider Isle)*/
/*--------------------------------------------------------->*/


/* Step 1.1 Table  `creature_template` */
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY,  '0',  '0',  '0',  '0',  '0',  '3167',  '0',  '0',  '0',   @CREATURE,  '',  '',  '',  'Directions',  '435',  '0',  '0',  '-1',  '0',  '0',  '11',  '1',  '1',  '1.14286',  '1',  '0',  '0',  '2000',  '2000',  '1',  '1',  '1',  '32768',  '2048',  '0',  '0',  '0',  '0',  '0',  '0',  '7',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  '0',  'SmartAI',  '0',  '3',  '1',  '1.5',  '1',  '1',  '1',  '1',  '1',  '1',  '0',  '0',  '1',  '0',  '32768',  '',  '25549');

/* Step 1.3 Table  creature_template_addon */
DELETE FROM creature_template_addon WHERE  `entry` = @ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@ENTRY, '0', '0', '0', '257', '0', '0', '0', '0', ''); 


/* Step 1.6 Table  `creature_text */
DELETE FROM  `creature_text` WHERE `CreatureID`= @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(@ENTRY, '0', '0', 'Taste blade, mongrel!', '12', '0', '100', '0', '0', '0', '10950', '0', 'SAY_GUARD_SIL_AGGRO1'), 
(@ENTRY, '0', '1', 'Please tell me that you didn\'t just do what I think you just did. Please tell me that I\'m not going to have to hurt you... ', '12', '0', '100', '0', '0', '0', '10951', '0', 'SAY_GUARD_SIL_AGGRO2'), 
(@ENTRY, '0', '2', 'As if we don\'t have enough problems, you go and create more!', '12', '0', '100', '0', '0', '0', '10953', '0', 'SAY_GUARD_SIL_AGGRO3'), 
(@ENTRY, '0', '3', 'You dare spill blood on neutral ground? OUT! OUT, I SAY!', '12', '0', '100', '0', '0', '0', '10948', '0', 'Stormwind City Patroller - On Aggro'), 
(@ENTRY, '0', '4', 'We don\'t take kindly to miscreants, $r.', '12', '0', '100', '0', '0', '0', '10949', '0', 'Stormwind City Patroller - On Aggro'), 
(@ENTRY, '0', '5', 'Get a rope!', '12', '0', '100', '0', '0', '0', '10952', '0', 'Stormwind City Patroller - On Aggro'), 
(@ENTRY, '0', '6', 'Believe me when I tell you this: You\'re gonna wish you weren\'t born, sissy!', '12', '0', '100', '0', '0', '0', '10954', '0', 'Stormwind City Patroller - On Aggro'), 
(@ENTRY, '0', '7', 'Your actions shame us all, $c. I hurt inside as I beat you senseless.', '12', '0', '100', '0', '0', '0', '10955', '0', 'Stormwind City Patroller - On Aggro'), 
(@ENTRY, '2', '0', '%s throws a rotten apple at $n.', '16', '0', '100', '0', '0', '0', '31671', '0', 'Stormwind City Patroller'), 
(@ENTRY, '3', '0', '%s throws rotten banana on $n.', '16', '0', '100', '0', '0', '0', '31672', '0', 'Stormwind City Patroller'), 
(@ENTRY, '4', '0', '%s spits on $n.', '16', '0', '100', '0', '0', '0', '31673', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '0', 'Monster!', '12', '0', '100', '0', '0', '0', '31662', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '1', 'Murderer!', '12', '0', '100', '0', '0', '0', '31679', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '2', 'GET A ROPE!', '12', '0', '100', '0', '0', '0', '31669', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '3', 'How dare you set foot in our city!', '12', '0', '100', '0', '0', '0', '31684', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '4', 'You disgust me.', '12', '0', '100', '0', '0', '0', '31680', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '5', 'Looks like we\'re going to have ourselves an execution.', '12', '0', '100', '0', '0', '0', '31682', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '6', 'Traitorous dog.', '12', '0', '100', '0', '0', '0', '31665', '0', 'Stormwind City Patroller'), 
(@ENTRY, '5', '7', 'My family was wiped out by the Scourge! MONSTER!', '12', '0', '100', '0', '0', '0', '31667', '0', 'Stormwind City Patroller'); 


/* Step 1.6 Table  `smart_scripts` */
DELETE FROM smart_scripts WHERE `entryorguid` = 1976 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('1976', '0', '0', '0', '10', '0', '100', '0', '1', '10', '10000', '10000', '', '87', '6800', '6801', '6802', '6803', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Stormwind City Patroller - Within 1-10 Range Out of Combat LoS - Run Random Script'), 
('1976', '0', '1', '0', '4', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Stormwind City Patroller - On aggro - Say text1'); 


/* Step 1.7 Table  `creature */
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` ( `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`,`VerifiedBuild`) VALUES 
(984383, @ENTRY, '0', '1519', '5390', '1', '0', '169', '0', '-1', '0', '0', '-8720.09', '846.207', '96.4861', '1.06465', '120', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '', '23360'), 
(984384, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8251.76', '968.828', '116.843', '2.24694', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984385, @ENTRY, '0', '1519', '5346', '1', '0', '0', '0', '-1', '0', '1', '-8462.83', '902.264', '99.102', '5.92122', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984386, @ENTRY, '0', '1519', '4411', '1', '0', '0', '0', '-1', '0', '1', '-8372.42', '1025.02', '125.544', '0.604959', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984387, @ENTRY, '0', '1519', '5151', '1', '0', '0', '0', '-1', '0', '1', '-8572.91', '751.191', '96.9494', '4.08057', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984388, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-9055.5', '889.243', '140.44', '1.65649', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984389, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '1', '-8985.63', '987.658', '150.793', '0.358784', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984390, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '1', '-8999.09', '835.627', '105.876', '0.519158', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984391, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8954.93', '1008.29', '152.35', '2.15396', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984392, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '1', '-8999.64', '900.305', '105.866', '1.24219', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984393, @ENTRY, '0', '1519', '5154', '1', '0', '0', '0', '-1', '0', '1', '-8997.55', '759.071', '131.732', '2.87979', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984394, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8923.8', '536.245', '94.7225', '2.38701', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984395, @ENTRY, '0', '1519', '5148', '1', '0', '0', '0', '-1', '0', '1', '-8824.64', '619.983', '94.4927', '0.959931', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984396, @ENTRY, '0', '1519', '1617', '1', '0', '0', '0', '-1', '0', '1', '-8970.91', '630.586', '138.9', '5.36352', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984397, @ENTRY, '0', '1519', '8411', '1', '0', '0', '0', '-1', '0', '1', '-8751.83', '836.113', '120.593', '6.16101', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984398, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8753.33', '824.486', '120.593', '3.26604', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984399, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8802.71', '490.125', '96.8441', '5.64052', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984400, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8960.39', '571.901', '93.8167', '5.40788', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984401, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8858.91', '500.276', '138.902', '2.3911', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984402, @ENTRY, '0', '1519', '5149', '1', '0', '0', '0', '-1', '0', '1', '-8725', '402.217', '97.9458', '2.33874', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984403, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8447.39', '451.179', '169.812', '2.92265', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984404, @ENTRY, '0', '1519', '5149', '1', '0', '0', '0', '-1', '0', '1', '-8700', '436.978', '98.8921', '5.49786', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984405, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8674.37', '580.179', '123.498', '4.55491', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984406, @ENTRY, '0', '1519', '5151', '1', '0', '0', '0', '-1', '0', '1', '-8659.22', '759.667', '97.1402', '5.31077', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984407, @ENTRY, '0', '1519', '9171', '1', '0', '0', '0', '-1', '0', '1', '-8219.1', '891.293', '106.698', '3.05874', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984408, @ENTRY, '0', '1519', '5314', '1', '0', '0', '0', '-1', '0', '1', '-8272.24', '823.774', '120.835', '3.92725', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '0'), 
(984409, @ENTRY, '0', '1519', '1519', '1', '0', '0', '0', '-1', '0', '1', '-8345.56', '585.092', '140.098', '3.75272', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984410, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8342.29', '639.946', '95.9051', '3.32252', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984411, @ENTRY, '0', '1519', '5150', '1', '0', '0', '0', '-1', '0', '1', '-8448.21', '577.583', '94.7481', '6.04258', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984412, @ENTRY, '0', '1519', '5314', '1', '0', '0', '0', '-1', '0', '1', '-8435.28', '700.156', '115.098', '0.684067', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984413, @ENTRY, '0', '1519', '5390', '1', '0', '0', '0', '-1', '0', '1', '-8494.79', '682.359', '101.265', '0.646436', '120', '0', '0', '1', '0', '2', '0', '0', '0', '0', '0', '', '0'), 
(984414, @ENTRY, '0', '1519', '5346', '1', '0', '169', '0', '-1', '0', '0', '-8436.11', '920.902', '99.0373', '0.596118', '120', '10', '0', '1', '0', '1', '0', '0', '0', '0', '0', '', '0'); 

/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8720.09' AND `position_y` REGEXP '846.207' AND `position_z` REGEXP '96.4861' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8720.09' AND `position_y` REGEXP '846.207' AND `position_z` REGEXP '96.4861' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8720.09', '846.207', '96.4861', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8711.14', '856.329', '97.156', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8693.04', '870.712', '97.296', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8682.33', '877.695', '97.1462', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8664.14', '854.98', '97.1137', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8648.74', '835.658', '96.8663', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8649.24', '829.915', '96.8364', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8658.9', '822.833', '96.9831', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8659.61', '817.31', '96.8637', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8647.54', '802.587', '97.1137', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8631.37', '784.083', '97.0142', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8614.12', '763.849', '97.0142', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8594.37', '754.425', '97.0298', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8584.26', '742.122', '97.0298', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8584.33', '735.318', '96.9048', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8594.97', '720.785', '96.9024', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8594.56', '713.834', '96.9024', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8574.03', '688.558', '97.1123', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8564.22', '675.963', '97.1385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8564.97', '670.454', '97.1385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8572.65', '664.797', '97.3878', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8587.5', '658.529', '98.1072', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8601.54', '656.461', '98.5832', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8620.17', '654.048', '99.2784', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8638.71', '656.3', '101.152', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8654.55', '660.454', '101.026', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8669.62', '677.588', '99.473', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8674.72', '685.615', '98.6483', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8691.58', '704.781', '97.2075', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8707.09', '724.686', '97.5206', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8719.38', '743.353', '98.0135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8734.06', '764.374', '98.1385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8725.89', '778.876', '98.0665', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8717.27', '790.479', '97.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8717.3', '797.869', '97.4996', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8726.46', '812.544', '97.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8727.5', '831.679', '96.3995', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8720.09' AND `position_y` REGEXP '846.207' AND `position_z` REGEXP '96.4861' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8251.76' AND `position_y` REGEXP '968.828' AND `position_z` REGEXP '116.843' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8251.76' AND `position_y` REGEXP '968.828' AND `position_z` REGEXP '116.843' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8462.83' AND `position_y` REGEXP '902.264' AND `position_z` REGEXP '99.102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8462.83' AND `position_y` REGEXP '902.264' AND `position_z` REGEXP '99.102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8462.83', '902.264', '99.102', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8462.83', '902.264', '99.102', '2.1293', '45000', '0', '0', '100', '0'), 
(@GUID, '3', '-8456.03', '907.234', '99.352', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8449.83', '912.122', '99.602', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8441.14', '917.491', '99.227', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8432.2', '923.556', '98.8897', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8423.38', '930.104', '98.7721', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8415.42', '935.493', '98.3864', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8406.39', '941.554', '98.0371', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8395.65', '946.781', '97.4849', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8386.01', '947.811', '97.0694', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8376.68', '945.944', '96.8194', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8364.99', '940.899', '96.8455', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8352.54', '935.314', '96.9202', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8340.8', '929.769', '96.9835', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8327.48', '922.67', '97.2612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8313.93', '914.561', '97.7612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8307.23', '911.873', '97.8989', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8295.16', '907.153', '97.9399', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8284.69', '902.361', '100.421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8265.26', '892.922', '100.421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8261.79', '893.651', '100.421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8261.79', '893.651', '100.421', '2.75762', '54000', '0', '0', '100', '0'), 
(@GUID, '24', '-8279.55', '899.773', '100.421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8286.18', '903.165', '100.421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8292.19', '905.729', '97.8149', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8300.37', '910.071', '98.0112', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8305.8', '915.26', '97.8592', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8309.43', '918.356', '97.6362', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8320.97', '924.561', '97.3862', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8328.67', '928.599', '97.1362', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8335.5', '932.219', '96.9835', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8341.83', '935.436', '96.8455', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8347.82', '938.226', '96.8209', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8357.89', '942.281', '96.8342', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8364.73', '945.455', '96.7205', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8374.54', '949.628', '96.5516', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8383.89', '951.648', '96.8194', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8391.25', '951.694', '97.0694', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8398.85', '949.774', '97.4444', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8409.36', '943.299', '98.0188', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8419.17', '936.826', '98.458', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8429.75', '929.971', '98.7789', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8439.83', '923.262', '99.102', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8448.69', '916.944', '99.5061', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8456.81', '909.536', '99.227', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8462.83' AND `position_y` REGEXP '902.264' AND `position_z` REGEXP '99.102' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8372.42' AND `position_y` REGEXP '1025.02' AND `position_z` REGEXP '125.544' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8372.42' AND `position_y` REGEXP '1025.02' AND `position_z` REGEXP '125.544' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8572.91' AND `position_y` REGEXP '751.191' AND `position_z` REGEXP '96.9494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8572.91' AND `position_y` REGEXP '751.191' AND `position_z` REGEXP '96.9494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8572.91', '751.191', '96.9494', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8574.04', '741.481', '96.9048', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8586.1', '728.036', '96.9024', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8596', '718.007', '96.9024', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8609.94', '707.802', '96.804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8617.89', '709.208', '96.804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8626.29', '721.908', '96.804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8648.23', '745.943', '96.9712', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8663.17', '764.51', '97.0784', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8638.53', '784.146', '97.2427', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8633.32', '789.123', '97.0755', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8649.27', '806.628', '97.1137', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8660.45', '820.436', '96.8637', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8654.77', '826.589', '96.9856', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8645.36', '833.495', '96.7387', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8630.7', '844.87', '96.9436', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8614.99', '858.023', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8602.84', '846.719', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8618.08', '835.035', '96.8717', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8633.18', '818.731', '96.8144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8634.79', '802.214', '96.9763', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8627.8', '785.5', '96.8892', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8622.02', '775.543', '96.8865', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8602.08', '760.82', '96.9519', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8583.33', '757.349', '96.9048', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8572.91' AND `position_y` REGEXP '751.191' AND `position_z` REGEXP '96.9494' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9055.5' AND `position_y` REGEXP '889.243' AND `position_z` REGEXP '140.44' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9055.5' AND `position_y` REGEXP '889.243' AND `position_z` REGEXP '140.44' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-9055.5', '889.243', '140.44', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9063.17', '868.023', '140.56', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9062.08', '848.616', '140.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9054.19', '828.701', '138.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9039.76', '814.233', '138.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9034.1', '807.434', '138.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9034.1', '807.434', '138.393', '2.49582', '12000', '0', '0', '100', '0'), 
(@GUID, '8', '-9048.33', '818.599', '138.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-9056.62', '827.274', '138.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9064.21', '844.91', '140.128', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9066.21', '868.2', '140.524', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9059.28', '889', '140.54', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9048.19', '903.668', '140.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-9048.19', '903.668', '140.593', '4.11898', '20000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-9055.5' AND `position_y` REGEXP '889.243' AND `position_z` REGEXP '140.44' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8985.63' AND `position_y` REGEXP '987.658' AND `position_z` REGEXP '150.793' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8985.63' AND `position_y` REGEXP '987.658' AND `position_z` REGEXP '150.793' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8985.63', '987.658', '150.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8985.63', '987.658', '150.793', '3.40339', '18000', '0', '0', '100', '0'), 
(@GUID, '3', '-9016.39', '979.493', '149.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9025.31', '970.932', '145.729', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9032.72', '961.331', '142.795', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-9038.64', '944.899', '139.859', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-9040.48', '925.491', '140.695', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-9040.48', '925.491', '140.695', '1.44862', '18000', '0', '0', '100', '0'), 
(@GUID, '9', '-9038.49', '944.767', '139.869', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-9031.5', '963.153', '142.871', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-9025.31', '970.932', '145.729', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-9016.39', '979.493', '149.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-9000.04', '984.3', '150.593', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8985.63' AND `position_y` REGEXP '987.658' AND `position_z` REGEXP '150.793' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.09' AND `position_y` REGEXP '835.627' AND `position_z` REGEXP '105.876' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.09' AND `position_y` REGEXP '835.627' AND `position_z` REGEXP '105.876' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8999.09', '835.627', '105.876', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8989.13', '836.361', '105.896', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8975.82', '855.299', '105.942', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8946.07', '862.179', '104.282', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8923.88', '855.896', '98.7596', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8910.68', '845.635', '96.4101', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8897.92', '861.844', '96.3471', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8887.01', '894.947', '104.801', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8895.11', '910.888', '110.645', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8854.33', '933.883', '102.453', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8895.11', '910.888', '110.645', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8887.22', '894.849', '104.777', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8898.14', '862.052', '96.3471', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8910.95', '844.718', '96.3325', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8897.67', '824.496', '92.2228', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8900.97', '800.769', '87.7092', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8931.9', '772.268', '88.5797', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8963.62', '770.323', '94.6293', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8987.6', '793.011', '100.922', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.09' AND `position_y` REGEXP '835.627' AND `position_z` REGEXP '105.876' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8954.93' AND `position_y` REGEXP '1008.29' AND `position_z` REGEXP '152.35' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8954.93' AND `position_y` REGEXP '1008.29' AND `position_z` REGEXP '152.35' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8954.93', '1008.29', '152.35', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8964.17', '998.965', '152.635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8964.17', '998.965', '152.635', '0.767945', '10000', '0', '0', '100', '0'), 
(@GUID, '4', '-8954.93', '1008.29', '152.35', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8935.57', '1015.06', '152.076', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8914.98', '1012.43', '148.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8894.77', '1004.38', '148.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8882.01', '984.314', '148.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8882.01', '984.314', '148.593', '2.09439', '18000', '0', '0', '100', '0'), 
(@GUID, '10', '-8894.38', '1003.39', '148.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8914.75', '1012.68', '148.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8935.24', '1014.32', '152.025', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8954.93' AND `position_y` REGEXP '1008.29' AND `position_z` REGEXP '152.35' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.64' AND `position_y` REGEXP '900.305' AND `position_z` REGEXP '105.866' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.64' AND `position_y` REGEXP '900.305' AND `position_z` REGEXP '105.866' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8999.64', '900.305', '105.866', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8988.68', '892.472', '105.793', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8978.68', '881.531', '106.51', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8975.33', '873.384', '106.697', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8975.76', '862.771', '106.61', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8979.11', '848.721', '105.709', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8988.86', '836.575', '105.864', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8996.14', '826.122', '105.33', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8992.53', '811.471', '103.883', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8989.76', '799.365', '102.603', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8986.24', '792.977', '100.648', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8984.34', '787.273', '99.3909', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8974.57', '780.297', '97.0168', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8964.68', '771.675', '94.9941', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8942.88', '770.778', '90.3491', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8924.33', '777.898', '87.4396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8907.86', '791.795', '87.4806', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8905.72', '793.778', '87.5646', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8902.53', '796.971', '87.4396', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8899.58', '801.382', '87.7874', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8899.21', '809.93', '88.7203', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8898.34', '823.903', '91.9341', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8901.96', '837.002', '94.7057', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8908.12', '843.24', '95.9022', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8907.13', '849.002', '96.3882', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8898.72', '861.54', '96.3471', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8892.55', '872.036', '99.0512', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8887.25', '889.701', '103.449', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8887.6', '896.267', '105.431', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8894.63', '910.634', '110.584', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8901.45', '922.425', '114.182', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8907', '928.759', '116.007', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8912.06', '938.066', '116.97', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8922.66', '952.799', '117.621', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8927.38', '962.802', '117.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8932.09', '970.733', '117.34', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8941.07', '970.896', '117.575', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8948.77', '965.654', '117.967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8964.1', '955.491', '117.428', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8980.75', '959.721', '116.414', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8987.29', '960.481', '115.468', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8997.14', '959.273', '113.122', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-9006.18', '953.099', '110.379', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-9010.88', '940.727', '109.307', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-9014.79', '927.231', '108.218', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-9010.73', '911.887', '106.807', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8999.64' AND `position_y` REGEXP '900.305' AND `position_z` REGEXP '105.866' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8997.55' AND `position_y` REGEXP '759.071' AND `position_z` REGEXP '131.732' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8997.55' AND `position_y` REGEXP '759.071' AND `position_z` REGEXP '131.732' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8997.55', '759.071', '131.732', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-9003.54', '764.872', '132.221', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-9011.56', '778.205', '137.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-9016.52', '790.815', '138.004', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-9016.52', '790.815', '138.004', '5.14872', '11000', '0', '0', '100', '0'), 
(@GUID, '6', '-9005.79', '771.358', '134.272', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8979.82', '751.514', '126.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8969.11', '747.618', '126.193', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8969.11', '747.618', '126.193', '2.87979', '17000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8997.55' AND `position_y` REGEXP '759.071' AND `position_z` REGEXP '131.732' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8923.8' AND `position_y` REGEXP '536.245' AND `position_z` REGEXP '94.7225' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8923.8' AND `position_y` REGEXP '536.245' AND `position_z` REGEXP '94.7225' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8923.8', '536.245', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8921.13', '541.922', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8908.25', '552.203', '94.3475', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8893.43', '563.925', '93.6002', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8895.64', '566.903', '93.4716', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8910.59', '554.939', '94.3475', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8923.31', '544.448', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8934.71', '543.941', '94.7271', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8946.6', '558.062', '93.8077', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8966.21', '561.744', '93.8733', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8967.72', '542.749', '94.103', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8956.6', '532.394', '96.3556', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8961.37', '518.628', '96.3569', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8947.43', '510.663', '96.3629', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8935.82', '494.466', '94.1829', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8926.8', '490.173', '93.8927', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8918.67', '495.736', '93.8984', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8912.29', '501.352', '93.8565', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8908.82', '507.932', '93.827', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8909.7', '514.503', '93.8155', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8912.72', '523.949', '93.8016', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8923.8' AND `position_y` REGEXP '536.245' AND `position_z` REGEXP '94.7225' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.64' AND `position_y` REGEXP '619.983' AND `position_z` REGEXP '94.4927' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.64' AND `position_y` REGEXP '619.983' AND `position_z` REGEXP '94.4927' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8824.64', '619.983', '94.4927', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8825.31', '615.174', '94.8533', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8827.04', '611.305', '94.6672', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8827.04', '611.305', '94.6672', '0.959931', '18000', '0', '0', '100', '0'), 
(@GUID, '5', '-8825.54', '619.632', '94.5323', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8826.18', '624.085', '94.3282', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8825.56', '626.854', '94.4532', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8824.12', '628.957', '94.4532', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8824.12', '628.957', '94.4532', '0.767945', '19000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8824.64' AND `position_y` REGEXP '619.983' AND `position_z` REGEXP '94.4927' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8970.91' AND `position_y` REGEXP '630.586' AND `position_z` REGEXP '138.9' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8970.91' AND `position_y` REGEXP '630.586' AND `position_z` REGEXP '138.9' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8751.83' AND `position_y` REGEXP '836.113' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8751.83' AND `position_y` REGEXP '836.113' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8751.83', '836.113', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8751.83', '836.113', '120.593', '6.16101', '15000', '0', '0', '100', '0'), 
(@GUID, '3', '-8750.19', '849.483', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8747.05', '852.116', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8746.29', '856.995', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8749.47', '860.488', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8754.9', '860.389', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8757.99', '858.061', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8765.68', '858.938', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8775.31', '860.625', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8785.92', '861.988', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8793.21', '862.505', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8796.75', '866.623', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8802.2', '866.123', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8805.08', '863.123', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8804.43', '859.201', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8801.6', '855.571', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8802.86', '847.953', '120.691', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8803.65', '842.785', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8803.65', '842.785', '120.593', '3.00197', '14000', '0', '0', '100', '0'), 
(@GUID, '21', '-8803.37', '848.125', '120.725', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8802.13', '854.979', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8804.92', '859.292', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8805.57', '863.007', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8802.59', '866.101', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8798.29', '867.389', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8795.37', '865', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8793.04', '861.823', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8786.3', '861.316', '120.858', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8776.96', '860.431', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8764.96', '858.703', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8758.24', '857.616', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8754.53', '860.24', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8748.16', '859.767', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8746.71', '855.309', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8747.91', '851.823', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8750.98', '849.469', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8751.77', '842.549', '120.833', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8751.83' AND `position_y` REGEXP '836.113' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.33' AND `position_y` REGEXP '824.486' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.33' AND `position_y` REGEXP '824.486' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8753.33', '824.486', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8753.33', '824.486', '120.593', '6.12611', '16000', '0', '0', '100', '0'), 
(@GUID, '3', '-8754.59', '812.575', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8752.26', '808.583', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8752.1', '804.274', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8755.52', '801.361', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8760.75', '801.464', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8764.04', '805.165', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8772.33', '806.238', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8781.42', '808.146', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8791.66', '809.958', '120.662', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8799.19', '811.471', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8802.89', '809.432', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8807.69', '810.059', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8810.43', '814.259', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8808.67', '817.922', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8805.32', '819.717', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8805.07', '827.689', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8805.14', '832.712', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8805.14', '832.712', '120.593', '3.07178', '16000', '0', '0', '100', '0'), 
(@GUID, '21', '-8805.89', '826.893', '120.934', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8806', '820.984', '123.392', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8808.49', '818.016', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8809.88', '813.924', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8808.26', '809.839', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8804.4', '808.122', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8801.69', '809.45', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8799.48', '811.596', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8791.92', '809.976', '120.661', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8783.94', '808.399', '120.679', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8772.33', '806.238', '120.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8764.04', '805.165', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8760.75', '801.464', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8755.88', '800.997', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8752.56', '803.717', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8752.26', '808.583', '123.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8754.59', '812.575', '123.393', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8753.33' AND `position_y` REGEXP '824.486' AND `position_z` REGEXP '120.593' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8802.71' AND `position_y` REGEXP '490.125' AND `position_z` REGEXP '96.8441' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8802.71' AND `position_y` REGEXP '490.125' AND `position_z` REGEXP '96.8441' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8802.71', '490.125', '96.8441', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8793.83', '506.099', '98.1385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8783.61', '515.064', '97.8885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8770.73', '530.464', '97.5135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8760.29', '545.951', '97.4636', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8749.31', '560.582', '97.4646', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8734.87', '575.12', '97.5213', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8720.74', '587.441', '98.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8710.14', '596.498', '99.0307', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8703.1', '612.382', '99.8231', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8703.41', '625.927', '100.496', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8706.46', '645.846', '100.362', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8711.11', '655.55', '99.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8717.33', '670.292', '98.9862', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8725.89', '686.734', '98.8612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8736.18', '700.851', '98.8199', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8750.85', '720.873', '98.2635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8764.49', '736.75', '99.1385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8782.12', '745.891', '98.9683', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8801.91', '745.823', '97.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8826.35', '733.76', '98.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8854.57', '718.51', '97.5135', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8879.35', '708.335', '98.096', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8904.08', '692.448', '99.4576', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8904.08', '692.448', '99.4576', '0.610865', '24000', '0', '0', '100', '0'), 
(@GUID, '26', '-8887.21', '702.74', '98.5174', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8876.8', '708.427', '98.085', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8859.61', '715.915', '97.7004', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8838.97', '724.627', '97.7745', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8822.9', '734.085', '98.324', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8803.81', '743.306', '97.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8786.94', '744.701', '98.8518', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8770.89', '738.918', '99.4678', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8760.34', '731.017', '98.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8750.1', '718.451', '98.2635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8740.53', '705.576', '98.7818', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8728.87', '690.2', '98.9862', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8717.33', '670.292', '98.9862', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8711.11', '655.55', '99.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8706.5', '641.319', '100.296', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8703.83', '625.064', '100.492', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8706.2', '608.936', '99.716', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8710.09', '598.036', '99.2386', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8717.44', '589.771', '98.4832', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8731.84', '576.365', '97.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8746.06', '564.229', '97.6247', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8758.94', '548.776', '97.5896', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8771.33', '530.757', '97.5169', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8783.61', '515.064', '97.8885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8796.23', '503.66', '98.1253', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8802.71' AND `position_y` REGEXP '490.125' AND `position_z` REGEXP '96.8441' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8960.39' AND `position_y` REGEXP '571.901' AND `position_z` REGEXP '93.8167' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8960.39' AND `position_y` REGEXP '571.901' AND `position_z` REGEXP '93.8167' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8960.39', '571.901', '93.8167', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8953.92', '570.095', '93.7994', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8942.19', '556.771', '93.9771', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8932.92', '546.87', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8926.5', '547.912', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8912.01', '561.03', '94.3512', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8903.67', '567.644', '93.5935', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8897.69', '572.417', '93.0625', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8895.44', '569.826', '93.1208', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8910.1', '558.852', '94.2225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8928.88', '544.403', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8927.04', '534.434', '94.7225', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8915.32', '517.574', '93.8185', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8916.15', '501.64', '93.8755', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8934.22', '502.031', '94.2423', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8940.81', '511.409', '95.8937', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8947.67', '515.825', '96.3596', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8961.03', '516.09', '96.3568', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8960.28', '529.708', '96.3561', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8974.15', '544.015', '94.2196', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8981.91', '554.188', '93.9647', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8970.03', '564.714', '93.8835', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8960.39' AND `position_y` REGEXP '571.901' AND `position_z` REGEXP '93.8167' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.91' AND `position_y` REGEXP '500.276' AND `position_z` REGEXP '138.902' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.91' AND `position_y` REGEXP '500.276' AND `position_z` REGEXP '138.902' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8858.91', '500.276', '138.902', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8850.22', '489.236', '138.9', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8840.06', '476.578', '138.847', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8831.41', '467.128', '138.935', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8821.76', '456.269', '138.955', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8819.23', '448.913', '138.93', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8819.23', '448.913', '138.93', '2.3911', '11000', '0', '0', '100', '0'), 
(@GUID, '8', '-8843.83', '474.033', '138.907', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8854.68', '487.203', '138.883', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8863.21', '501.262', '138.902', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8872.91', '511.175', '138.903', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8872.91', '511.175', '138.903', '5.58505', '20000', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8858.91' AND `position_y` REGEXP '500.276' AND `position_z` REGEXP '138.902' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8725' AND `position_y` REGEXP '402.217' AND `position_z` REGEXP '97.9458' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8725' AND `position_y` REGEXP '402.217' AND `position_z` REGEXP '97.9458' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8725', '402.217', '97.9458', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8717.33', '403.668', '98.0681', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8710.66', '403.729', '99.2191', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8705.14', '401.422', '100.658', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8699.42', '397.469', '101.562', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8693.18', '394.668', '102.145', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8687.11', '395.844', '102.312', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8680.7', '396.031', '102.651', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8673.73', '400.123', '103.52', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8665.96', '405.792', '103.601', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8656.55', '414.514', '102.581', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8646.65', '425.009', '101.919', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8639.83', '433.106', '102.016', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8635.35', '439.231', '102.571', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8632.09', '443.455', '102.767', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8631.72', '451.16', '102.457', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8632.03', '459.635', '102.333', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8634.97', '465.382', '102.376', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8640.01', '472.892', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8645.24', '480.253', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8651', '486.854', '102.464', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8655.86', '493.196', '101.74', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8660.4', '496.998', '101.071', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8667.79', '497.623', '100.6', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8678.13', '491.88', '98.3297', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8683.81', '484.271', '96.5533', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8695.27', '475.592', '95.4929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8703.01', '468.816', '96.1462', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8706.1', '465.45', '96.4365', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8712.62', '459.22', '97.1379', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8718.02', '452.236', '97.3921', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8722.25', '446.531', '97.6248', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8725.24', '438.37', '97.9834', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8725.22', '430.161', '98.1599', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8724.79', '420.998', '97.9031', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8728.89', '413.262', '97.8208', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8738.23', '403.247', '97.9899', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8740.49', '400.685', '98.2088', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8748.56', '394.422', '101.042', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8749.76', '392.26', '101.057', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8747.9', '388.778', '101.056', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8745.69', '385.849', '101.047', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8744.29', '381.606', '101.038', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8743.89', '377.712', '101.031', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8742.19', '373.438', '100.983', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8740.33', '367.474', '100.949', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8740.85', '360.641', '101.329', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8743.63', '353.97', '100.87', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8747.14', '347.517', '100.419', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8749.93', '340.53', '101.169', '0', '10000', '0', '0', '100', '0'), 
(@GUID, '51', '-8749.87', '346.227', '100.856', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8753.27', '352.446', '100.562', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8758.22', '357.233', '100.544', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8763.32', '362.052', '100.91', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8768.34', '366.097', '100.946', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8774.54', '369.403', '100.99', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8774.54', '369.403', '100.99', '2.33874', '22000', '0', '0', '100', '0'), 
(@GUID, '58', '-8767.14', '369.007', '100.881', '0', '0', '0', '0', '100', '0'), 
(@GUID, '59', '-8763.68', '372.45', '100.898', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-8760.53', '376.352', '100.858', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-8756.51', '379.135', '101.05', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-8755.6', '382.918', '101.056', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-8755.5', '387.391', '101.057', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-8752.55', '391.076', '101.057', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-8748.37', '394.462', '100.993', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-8740.65', '400.174', '98.209', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-8737.03', '401.759', '97.9899', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-8732.82', '401.076', '98.0708', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8725' AND `position_y` REGEXP '402.217' AND `position_z` REGEXP '97.9458' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8447.39' AND `position_y` REGEXP '451.179' AND `position_z` REGEXP '169.812' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8447.39' AND `position_y` REGEXP '451.179' AND `position_z` REGEXP '169.812' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8447.39', '451.179', '169.812', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8441.7', '453.691', '169.774', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8436.51', '452.59', '169.824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8433.13', '447.307', '169.774', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8427.79', '434.84', '169.564', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8427.79', '434.84', '169.564', '1.90241', '17000', '0', '0', '100', '0'), 
(@GUID, '7', '-8432.1', '445.181', '169.79', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8434.56', '449.675', '169.752', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8438.01', '453.087', '169.729', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8443.1', '453.432', '169.787', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8453.57', '453.724', '169.247', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8469.94', '455.333', '162.845', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8486.67', '455.578', '154.395', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8498.42', '454.005', '154.555', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8506.34', '452.238', '154.118', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8514.94', '452.578', '153.481', '0', '10000', '0', '0', '100', '0'), 
(@GUID, '17', '-8506.04', '449.99', '154.3', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8500.55', '452.964', '154.478', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8490.63', '454.753', '154.418', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8471.99', '452.783', '161.707', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8456.93', '450.608', '169.25', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8447.39' AND `position_y` REGEXP '451.179' AND `position_z` REGEXP '169.812' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8700' AND `position_y` REGEXP '436.978' AND `position_z` REGEXP '98.8921' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8700' AND `position_y` REGEXP '436.978' AND `position_z` REGEXP '98.8921' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8700', '436.978', '98.8921', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8712.92', '439.72', '97.1421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8714.28', '445.035', '97.1421', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8712.76', '454.082', '97.1632', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8703.92', '463.224', '96.4927', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8695.15', '470.632', '95.4929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8692.7', '475.092', '95.4929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8693.89', '479.328', '95.4929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8718.28', '510.09', '96.5368', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8718.28', '510.09', '96.5368', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8722.02', '512.082', '96.8087', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8726.45', '510.918', '96.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8731.62', '506.642', '96.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8745.44', '493.533', '96.9321', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8764.87', '474.469', '97.779', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8773.1', '469.899', '97.8585', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8782.25', '469.95', '97.8088', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8792.74', '472.281', '96.8088', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8798.15', '471.561', '97.034', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8798.15', '471.561', '97.034', '0.698132', '24000', '0', '0', '100', '0'), 
(@GUID, '21', '-8792.74', '472.281', '96.8088', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8782.13', '470.085', '97.8088', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8772.96', '470.128', '97.8308', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8765.05', '474.661', '97.8005', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8744.76', '492.804', '96.9321', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8726.89', '509.75', '96.6385', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8712.85', '519.693', '97.284', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8695.04', '535.842', '97.8885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8680.4', '548.542', '97.5404', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8665.94', '553.575', '97.0334', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8655.41', '552.344', '97.1655', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8645.14', '547.274', '98.3042', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8628.94', '531.073', '101.103', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8616.8', '518.278', '103.263', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8611.27', '510.786', '103.724', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8612.17', '506.748', '103.491', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8644.15', '481.595', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8645.32', '475.691', '102.631', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8638.5', '464.875', '102.376', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8635.96', '451.319', '102.501', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8637.12', '442.094', '102.364', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8643.88', '433.852', '101.422', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8650.36', '431.698', '101.608', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8654.6', '433.288', '101.618', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8664.4', '445.163', '100.526', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8671.05', '451.139', '99.831', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8677.43', '452.205', '99.831', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8683.74', '448.385', '99.956', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8690', '442.255', '99.5892', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8697.66', '437.872', '99.3173', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8700' AND `position_y` REGEXP '436.978' AND `position_z` REGEXP '98.8921' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8674.37' AND `position_y` REGEXP '580.179' AND `position_z` REGEXP '123.498' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8674.37' AND `position_y` REGEXP '580.179' AND `position_z` REGEXP '123.498' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8674.37', '580.179', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8670.75', '582.958', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8663.47', '581.698', '120.698', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8658.39', '580.658', '120.671', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8658', '580.457', '120.669', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8658', '580.457', '120.669', '4.41568', '10000', '0', '0', '100', '0'), 
(@GUID, '7', '-8670.45', '582.802', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8674.43', '580.526', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8678.76', '580.102', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8681.75', '583.568', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8682.19', '588.205', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8677.87', '590.53', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8677.17', '598.458', '120.731', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8675.7', '608.547', '120.659', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8674.84', '618.944', '120.723', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8673.63', '626.488', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8676.48', '630.872', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8676.27', '635.24', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8671.59', '638.04', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8667.33', '636.109', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8665.05', '633.285', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8656.47', '632.995', '120.698', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8652.74', '632.653', '120.69', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8652.74', '632.653', '120.69', '1.48353', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8664.9', '633.858', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8667.5', '636.877', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8671.27', '638.099', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8675.58', '636.102', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8677.31', '632.573', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8675.35', '628.215', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8673.58', '626.137', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8674.88', '618.201', '120.714', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8675.78', '609.054', '120.745', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8677.37', '598.833', '120.698', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8678.15', '591.328', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8681.48', '588.722', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8681.89', '583.752', '123.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8678.62', '580.229', '123.498', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8674.37' AND `position_y` REGEXP '580.179' AND `position_z` REGEXP '123.498' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8659.22' AND `position_y` REGEXP '759.667' AND `position_z` REGEXP '97.1402' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8659.22' AND `position_y` REGEXP '759.667' AND `position_z` REGEXP '97.1402' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8659.22', '759.667', '97.1402', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8643.39', '736.781', '96.8462', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8627.08', '727.135', '96.929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8616.54', '711.675', '96.804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8611.82', '710.925', '96.804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8588.46', '730.727', '96.9024', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8568.56', '747.234', '96.9901', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8556.06', '758.146', '98.6537', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8553.96', '767.128', '99.4568', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8562.19', '766.477', '98.7531', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8566.45', '762.918', '98.2419', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8579.66', '758.583', '97.158', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8597.54', '759.863', '97.0298', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8613.81', '769.677', '96.8405', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8627.23', '786.378', '96.8445', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8631.96', '803.465', '96.8144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8628.67', '820.99', '96.8144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8617.5', '833.314', '96.9394', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8602.16', '845.96', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8601.26', '853.328', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8607.07', '859.941', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8617.37', '859.313', '96.9967', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8644.5', '837.304', '96.7387', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8659.97', '824.448', '96.9851', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8661.87', '816.052', '96.7519', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8642.01', '793.733', '96.9283', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8635.92', '786.597', '97.0992', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8639.05', '780.377', '97.1783', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8658.02', '766.161', '96.9712', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8659.22' AND `position_y` REGEXP '759.667' AND `position_z` REGEXP '97.1402' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8219.1' AND `position_y` REGEXP '891.293' AND `position_z` REGEXP '106.698' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8219.1' AND `position_y` REGEXP '891.293' AND `position_z` REGEXP '106.698' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8219.1', '891.293', '106.698', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8219.1', '891.293', '106.698', '4.36332', '11000', '0', '0', '100', '0'), 
(@GUID, '3', '-8232.23', '869.372', '106.138', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8245.39', '850.807', '108.246', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8255.57', '839.934', '111.595', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8266.31', '829.708', '118.399', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8272.24', '823.774', '121.045', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8284.35', '802.997', '126.24', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8289.78', '793.363', '127.898', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8289.78', '793.363', '127.898', '0.977384', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8277.72', '813.681', '123.463', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8267.59', '827.589', '119.64', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8254.39', '840.236', '111.059', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8247.42', '847.557', '108.478', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8232.86', '865.71', '106.07', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8224.96', '878.291', '106.383', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8219.1' AND `position_y` REGEXP '891.293' AND `position_z` REGEXP '106.698' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8272.24' AND `position_y` REGEXP '823.774' AND `position_z` REGEXP '120.835' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8272.24' AND `position_y` REGEXP '823.774' AND `position_z` REGEXP '120.835' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8345.56' AND `position_y` REGEXP '585.092' AND `position_z` REGEXP '140.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8345.56' AND `position_y` REGEXP '585.092' AND `position_z` REGEXP '140.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8345.56', '585.092', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8348.41', '588.172', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8348.41', '588.172', '140.098', '0.959931', '16000', '0', '0', '100', '0'), 
(@GUID, '4', '-8357.69', '583.986', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8356.73', '577.035', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8365.96', '567.318', '138.972', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8386.34', '555.436', '143.803', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8406.28', '537.281', '149.506', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8413.99', '530.503', '149.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8421.39', '519.139', '149.436', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8424.92', '496.161', '148.113', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8430.88', '480.448', '155.055', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8434.16', '464.047', '155.144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8433.27', '463.727', '155.138', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8433.27', '463.727', '155.138', '1.23918', '15000', '0', '0', '100', '0'), 
(@GUID, '16', '-8423.84', '494.227', '148.533', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8420.93', '511.694', '149.108', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8419.83', '520.193', '149.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8416.37', '523.288', '149.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8411.78', '526.512', '149.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8411.37', '531.642', '149.498', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8402.96', '538.354', '149.714', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8385.47', '550.613', '143.68', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8367.7', '561.953', '139.56', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8361.55', '569.3', '138.898', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8358.37', '573.804', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8354.86', '576.139', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8348.47', '576.552', '140.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8345.18', '580.226', '140.098', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8345.56' AND `position_y` REGEXP '585.092' AND `position_z` REGEXP '140.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8342.29' AND `position_y` REGEXP '639.946' AND `position_z` REGEXP '95.9051' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8342.29' AND `position_y` REGEXP '639.946' AND `position_z` REGEXP '95.9051' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8342.29', '639.946', '95.9051', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8342.29', '639.946', '95.9051', '0.610865', '10000', '0', '0', '100', '0'), 
(@GUID, '3', '-8346.13', '638.656', '95.6192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8352.13', '638.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8357.13', '639.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8364.13', '638.906', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8373.63', '637.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8380.63', '638.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8385.63', '638.656', '95.1192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8391.63', '636.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8396.88', '629.656', '95.6192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8402.38', '625.406', '95.6192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8408.13', '624.156', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8413.38', '624.156', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8417.88', '623.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8422.63', '623.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8427.38', '621.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8431.38', '616.906', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8433.13', '610.656', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8433.98', '602.365', '94.8334', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8433.98', '602.365', '94.8334', '6.03884', '24000', '0', '0', '100', '0'), 
(@GUID, '22', '-8432.88', '610.656', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8431.13', '617.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8427.13', '621.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8422.63', '623.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8417.88', '623.406', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8413.38', '624.156', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8408.13', '623.906', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8402.38', '622.406', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8397.88', '621.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8393.88', '619.906', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8388.38', '618.406', '95.6192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8381.88', '618.156', '95.8692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8374.88', '620.406', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8371.63', '621.406', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8366.13', '621.406', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8360.63', '621.406', '95.6192', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8353.38', '625.156', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8347.88', '631.406', '95.3692', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8344.63', '636.656', '95.6192', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8342.29' AND `position_y` REGEXP '639.946' AND `position_z` REGEXP '95.9051' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8448.21' AND `position_y` REGEXP '577.583' AND `position_z` REGEXP '94.7481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8448.21' AND `position_y` REGEXP '577.583' AND `position_z` REGEXP '94.7481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8448.21', '577.583', '94.7481', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8438.53', '575.208', '94.7481', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8431.64', '568.837', '94.6118', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8422.47', '565.078', '93.7041', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8412.58', '565.422', '92.7673', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8403.83', '568.71', '92.3098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8395.84', '576.859', '92.0112', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8394.12', '588.597', '92.5649', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8393.84', '598.74', '93.7082', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8393.18', '607.533', '94.7277', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8388.8', '612.948', '95.1362', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8382.19', '619.556', '95.5516', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8378.84', '623.566', '95.4097', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8377.89', '628.398', '95.1362', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8377.89', '628.398', '95.1362', '6.14356', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8380.98', '639.62', '94.8303', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8384.76', '649.971', '95.2519', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8389.32', '658.807', '95.1106', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8395.42', '667.186', '94.9614', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8404.04', '672.844', '95.1995', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8413.07', '673.604', '95.1521', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8421.13', '669.901', '94.929', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8432.48', '660.752', '93.5988', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8438.23', '656.075', '93.095', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8441.86', '654.986', '93.1949', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8444.33', '657.038', '93.1949', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8449.95', '664.049', '94.7499', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8458.62', '675.041', '97.4804', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8468.06', '687.285', '99.5502', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8473.32', '689.641', '100.013', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8478.98', '687.88', '100.571', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8486.56', '681.953', '100.888', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8494.07', '671.028', '100.638', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8501.67', '661.495', '100.593', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8512.74', '649.96', '100.513', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8528.39', '641.835', '100.013', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8539.3', '635.63', '100.466', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8551.39', '626.599', '101.384', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8560.73', '619.396', '102.239', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8572.64', '610.175', '102.911', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8582.11', '599.911', '103.513', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8588.8', '587.417', '103.513', '0', '0', '0', '0', '100', '0'), 
(@GUID, '43', '-8591.63', '573.309', '102.705', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8589.79', '559.16', '102.033', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8583.82', '547.91', '102.033', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8575.34', '535.382', '101.82', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8563.85', '521.712', '100.641', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8554.03', '509.247', '98.666', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8547.85', '503.378', '98.5728', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8543.4', '503.104', '98.6379', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-8541.73', '504.49', '98.7762', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8530.34', '513.177', '98.4612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8519.73', '521.319', '98.4612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8511.68', '527.729', '98.4612', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8497.13', '540.33', '97.972', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8484.18', '554.988', '98.0699', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8473.86', '564.444', '97.1207', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-8459.31', '574.096', '95.6778', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8448.21' AND `position_y` REGEXP '577.583' AND `position_z` REGEXP '94.7481' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8435.28' AND `position_y` REGEXP '700.156' AND `position_z` REGEXP '115.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8435.28' AND `position_y` REGEXP '700.156' AND `position_z` REGEXP '115.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8435.28', '700.156', '115.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8435.28', '700.156', '115.098', '0.628318', '20000', '0', '0', '100', '0'), 
(@GUID, '3', '-8422.67', '710.502', '115.098', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8413.84', '717.092', '114.922', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8405.17', '723.368', '114.324', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8394.24', '732.28', '114.41', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8381.44', '716.314', '114.748', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8381.44', '716.314', '114.748', '2.19912', '16000', '0', '0', '100', '0'), 
(@GUID, '9', '-8389.73', '727.092', '114.321', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8393.94', '731.59', '114.371', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8403.7', '724.245', '114.139', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8417.32', '715.094', '115.029', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8435.28' AND `position_y` REGEXP '700.156' AND `position_z` REGEXP '115.098' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8494.79' AND `position_y` REGEXP '682.359' AND `position_z` REGEXP '101.265' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`aiAnimKit`,`movementAnimKit`,`meleeAnimKit`,`auras`) VALUES 
(@GUID, @GUID, '0', '0', '257', '0', '0', '0', '0', ''); 

/* Step 3.4 Table  `waypoint_data` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8494.79' AND `position_y` REGEXP '682.359' AND `position_z` REGEXP '101.265' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `waypoint_data` WHERE `id` = @GUID;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES 
(@GUID, '1', '-8494.79', '682.359', '101.265', '0', '0', '0', '0', '100', '0'), 
(@GUID, '2', '-8492.71', '678.125', '100.888', '0', '0', '0', '0', '100', '0'), 
(@GUID, '3', '-8494.57', '674.342', '100.638', '0', '0', '0', '0', '100', '0'), 
(@GUID, '4', '-8499.87', '666.703', '100.752', '0', '0', '0', '0', '100', '0'), 
(@GUID, '5', '-8504.35', '660.137', '100.513', '0', '0', '0', '0', '100', '0'), 
(@GUID, '6', '-8507.55', '656.974', '100.607', '0', '0', '0', '0', '100', '0'), 
(@GUID, '7', '-8510.32', '657.303', '101.115', '0', '0', '0', '0', '100', '0'), 
(@GUID, '8', '-8512.56', '659.063', '101.366', '0', '0', '0', '0', '100', '0'), 
(@GUID, '9', '-8519.54', '669.622', '102.796', '0', '0', '0', '0', '100', '0'), 
(@GUID, '10', '-8527.76', '681.012', '100.528', '0', '0', '0', '0', '100', '0'), 
(@GUID, '11', '-8530.39', '684.901', '98.265', '0', '0', '0', '0', '100', '0'), 
(@GUID, '12', '-8530.55', '688.097', '97.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '13', '-8528.2', '690.958', '97.7861', '0', '0', '0', '0', '100', '0'), 
(@GUID, '14', '-8516.95', '698.382', '97.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '15', '-8503.22', '708.743', '97.7167', '0', '0', '0', '0', '100', '0'), 
(@GUID, '16', '-8491.9', '717.604', '97.9835', '0', '0', '0', '0', '100', '0'), 
(@GUID, '17', '-8482.73', '725.778', '98.1641', '0', '0', '0', '0', '100', '0'), 
(@GUID, '18', '-8476.8', '732.375', '98.5945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '19', '-8476.39', '736.401', '98.1945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '20', '-8483.94', '745.316', '98.3945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '21', '-8493.45', '754.255', '98.3945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '22', '-8504.05', '764.936', '98.5669', '0', '0', '0', '0', '100', '0'), 
(@GUID, '23', '-8510.47', '771.328', '97.744', '0', '0', '0', '0', '100', '0'), 
(@GUID, '24', '-8512.54', '775.479', '99.2266', '0', '0', '0', '0', '100', '0'), 
(@GUID, '25', '-8512.66', '779.127', '100.526', '0', '0', '0', '0', '100', '0'), 
(@GUID, '26', '-8509.34', '782.639', '102.343', '0', '0', '0', '0', '100', '0'), 
(@GUID, '27', '-8503.61', '784.811', '104.057', '0', '0', '0', '0', '100', '0'), 
(@GUID, '28', '-8496.28', '786.54', '105.186', '0', '0', '0', '0', '100', '0'), 
(@GUID, '29', '-8488.69', '791.925', '105.76', '0', '0', '0', '0', '100', '0'), 
(@GUID, '30', '-8482.22', '799.236', '106.417', '0', '0', '0', '0', '100', '0'), 
(@GUID, '31', '-8479.27', '808.988', '106.324', '0', '0', '0', '0', '100', '0'), 
(@GUID, '32', '-8479.87', '819.135', '106.096', '0', '0', '0', '0', '100', '0'), 
(@GUID, '33', '-8482.07', '826.849', '105.915', '0', '0', '0', '0', '100', '0'), 
(@GUID, '34', '-8489.36', '832.674', '105.824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '35', '-8495.24', '835.684', '105.857', '0', '0', '0', '0', '100', '0'), 
(@GUID, '36', '-8498.73', '839.969', '105.982', '0', '0', '0', '0', '100', '0'), 
(@GUID, '37', '-8498.23', '845.906', '106.107', '0', '0', '0', '0', '100', '0'), 
(@GUID, '38', '-8493.51', '849.816', '106.016', '0', '0', '0', '0', '100', '0'), 
(@GUID, '39', '-8489.91', '856.583', '105.88', '0', '0', '0', '0', '100', '0'), 
(@GUID, '40', '-8490.08', '864.049', '105.732', '0', '0', '0', '0', '100', '0'), 
(@GUID, '41', '-8492.07', '874.399', '106.444', '0', '0', '0', '0', '100', '0'), 
(@GUID, '42', '-8492.07', '874.399', '106.444', '5.02655', '16000', '0', '0', '100', '0'), 
(@GUID, '43', '-8489.2', '864.54', '105.732', '0', '0', '0', '0', '100', '0'), 
(@GUID, '44', '-8490.89', '855.398', '105.857', '0', '0', '0', '0', '100', '0'), 
(@GUID, '45', '-8495.31', '848.875', '106.107', '0', '0', '0', '0', '100', '0'), 
(@GUID, '46', '-8497.81', '842.335', '106', '0', '0', '0', '0', '100', '0'), 
(@GUID, '47', '-8496.95', '837.158', '105.857', '0', '0', '0', '0', '100', '0'), 
(@GUID, '48', '-8493.65', '834.269', '105.857', '0', '0', '0', '0', '100', '0'), 
(@GUID, '49', '-8487.82', '833.021', '105.824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '50', '-8481.79', '829.016', '105.824', '0', '0', '0', '0', '100', '0'), 
(@GUID, '51', '-8479.99', '823.816', '105.985', '0', '0', '0', '0', '100', '0'), 
(@GUID, '52', '-8479.29', '813.741', '106.152', '0', '0', '0', '0', '100', '0'), 
(@GUID, '53', '-8479.89', '804.453', '106.449', '0', '0', '0', '0', '100', '0'), 
(@GUID, '54', '-8484.72', '796.224', '106.151', '0', '0', '0', '0', '100', '0'), 
(@GUID, '55', '-8493.48', '788.984', '105.407', '0', '0', '0', '0', '100', '0'), 
(@GUID, '56', '-8503.35', '785.009', '104.144', '0', '0', '0', '0', '100', '0'), 
(@GUID, '57', '-8509.36', '781.24', '101.872', '0', '0', '0', '0', '100', '0'), 
(@GUID, '58', '-8510.85', '773.381', '98.5594', '0', '0', '0', '0', '100', '0'), 
(@GUID, '59', '-8507.54', '768.472', '98.0384', '0', '0', '0', '0', '100', '0'), 
(@GUID, '60', '-8499.31', '760.278', '98.485', '0', '0', '0', '0', '100', '0'), 
(@GUID, '61', '-8490.29', '751.472', '98.3945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '62', '-8481.8', '743.642', '98.3945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '63', '-8476.72', '737.566', '98.2743', '0', '0', '0', '0', '100', '0'), 
(@GUID, '64', '-8476.16', '734.842', '98.1945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '65', '-8478.59', '731.884', '98.5945', '0', '0', '0', '0', '100', '0'), 
(@GUID, '66', '-8487.3', '725.483', '98.393', '0', '0', '0', '0', '100', '0'), 
(@GUID, '67', '-8496.39', '719.743', '98.3288', '0', '0', '0', '0', '100', '0'), 
(@GUID, '68', '-8509.52', '709.71', '97.906', '0', '0', '0', '0', '100', '0'), 
(@GUID, '69', '-8523.97', '699.167', '97.3885', '0', '0', '0', '0', '100', '0'), 
(@GUID, '70', '-8532.02', '691.528', '97.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '71', '-8533.23', '686.066', '97.7635', '0', '0', '0', '0', '100', '0'), 
(@GUID, '72', '-8532.02', '680.807', '99.3742', '0', '0', '0', '0', '100', '0'), 
(@GUID, '73', '-8524.04', '668.727', '102.844', '0', '0', '0', '0', '100', '0'), 
(@GUID, '74', '-8515.42', '656.913', '101.344', '0', '0', '0', '0', '100', '0'), 
(@GUID, '75', '-8511.46', '655.209', '100.638', '0', '0', '0', '0', '100', '0'), 
(@GUID, '76', '-8505.85', '655.691', '100.528', '0', '0', '0', '0', '100', '0'), 
(@GUID, '77', '-8496.87', '662.906', '100.529', '0', '0', '0', '0', '100', '0'), 
(@GUID, '78', '-8490.13', '673.208', '100.638', '0', '0', '0', '0', '100', '0'), 
(@GUID, '79', '-8489.76', '677.283', '100.725', '0', '0', '0', '0', '100', '0'), 
(@GUID, '80', '-8492.8', '681.615', '101.211', '0', '0', '0', '0', '100', '0'), 
(@GUID, '81', '-8498.48', '686.639', '100.898', '0', '0', '0', '0', '100', '0'); 




/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8494.79' AND `position_y` REGEXP '682.359' AND `position_z` REGEXP '101.265' AND `PhaseId` = '0' AND `map` = '0');
DELETE FROM  `creature_formations` WHERE `leaderGUID` = @GUID;
/* Step 2.8 Table  `creature_addon` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8436.11' AND `position_y` REGEXP '920.902' AND `position_z` REGEXP '99.0373' AND `PhaseId` = '169' AND `map` = '0');
DELETE FROM `creature_addon` WHERE `guid` = @GUID;
/* Step 3.1 Table  `creature_formations` */
SET @GUID := (SELECT `guid` FROM `creature` WHERE `position_x` REGEXP '-8436.11' AND `position_y` REGEXP '920.902' AND `position_z` REGEXP '99.0373' AND `PhaseId` = '169' AND `map` = '0');
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
DELETE FROM `creature_equip_template` WHERE `CreatureID`= 1976;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
('1976', '1', '1899', '0', '143', '0', '0', '2551', '0', '0', '18019');

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

