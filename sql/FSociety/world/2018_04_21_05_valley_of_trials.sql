-- Valley of Trials Fixes
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `id` IN (3098,3101,3102);
UPDATE `creature` SET `spawndist`=10, `MovementType`=1 WHERE `id` IN (39317,3099);
UPDATE `creature` SET `spawndist`=20, `MovementType`=1 WHERE `id` IN (3281);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3098,5952,39408,11378,39317));
DELETE FROM `creature` WHERE `id` IN (5952,39408,11378);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`) VALUES 
(251492, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -610.798, -4599.89, 41.4444, 4.72984, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251493, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -605.953, -4541.56, 42.0052, 0.907571, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251495, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -560.155, -4589.4, 42.7146, 1.8675, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251496, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -582.795, -4550.96, 42.7249, 1.74533, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251497, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -641.489, -4561.34, 42.9932, 6.05629, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251498, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -597.633, -4604.42, 41.2763, 4.50295, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251669, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -600.55, -4351.76, 38.2473, 4.68299, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(251774, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -565.985, -4269.39, 38.488, 4.2237, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251776, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -575.834, -4262.37, 38.1957, 2.77459, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(251829, 5952, 1, 14, 364, 1, 169, 0, 0, 0, -606.797, -4193.87, 41.1824, 4.69494, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251831, 5952, 1, 14, 364, 1, 169, 0, 0, 0, -599.939, -4191.99, 41.1824, 4.17134, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251832, 5952, 1, 14, 364, 1, 169, 0, 0, 0, -606.576, -4157.58, 42.924, 3.83518, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(251834, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -645.424, -4260.63, 38.2699, 5.14872, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(251835, 5952, 1, 14, 363, 1, 169, 0, 0, 0, -619.708, -4232.33, 38.2589, 2.57029, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(251548, 39408, 1, 14, 363, 1, 169, 0, 0, 0, -489.71, -4353.59, 40.1424, 0.186584, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(251551, 39408, 1, 14, 363, 1, 169, 0, 0, 0, -462.056, -4281.84, 42.8664, 2.98703, 120, 0, 0, 1, 0, 2, 0, 0, 0),
(401182, 11378, 1, 14, 363, 1, 169, 0, 0, 0, -567.868, -4264.46, 38.9193, 2.04204, 120, 0, 0, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5952,39408));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(251669, 25166900, 0, 0, 1, 0, '18950'),
(251776, 25177600, 0, 0, 1, 0, '18950'),
(251832, 25183200, 0, 0, 1, 0, '18950'),
(251835, 25183500, 0, 0, 1, 0, '18950'),
(251548, 25154800, 0, 0, 1, 0, ''),
(251551, 25155100, 0, 0, 1, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry` IN (39317);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(39317, 0, 0, 0, 1, 0, '58506');

DELETE FROM `waypoint_data` WHERE `id` IN (25154800,25155100,25166900,25177600,25183200,25183500);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(25154800, 1, -489.71, -4353.59, 40.1424, 0, 0, 0, 0, 100, 0),
(25154800, 2, -492.151, -4347.85, 39.3563, 0, 0, 0, 0, 100, 0),
(25154800, 3, -499.094, -4344.17, 38.398, 0, 0, 0, 0, 100, 0),
(25154800, 4, -505.243, -4348.37, 38.308, 0, 0, 0, 0, 100, 0),
(25154800, 5, -513.172, -4349.23, 38.308, 0, 0, 0, 0, 100, 0),
(25154800, 6, -518.476, -4344.62, 38.433, 0, 0, 0, 0, 100, 0),
(25154800, 7, -511.01, -4334.16, 38.183, 0, 0, 0, 0, 100, 0),
(25154800, 8, -491.045, -4330.39, 38.4228, 0, 0, 0, 0, 100, 0),
(25154800, 9, -480.179, -4337.41, 40.4696, 0, 0, 0, 0, 100, 0),
(25154800, 10, -469.865, -4334.44, 41.7806, 0, 0, 0, 0, 100, 0),
(25154800, 11, -468.016, -4344.85, 42.9473, 0, 0, 0, 0, 100, 0),
(25154800, 12, -479.946, -4357.67, 41.4459, 0, 0, 0, 0, 100, 0),
(25155100, 1, -462.056, -4281.84, 42.8664, 0, 0, 0, 0, 100, 0),
(25155100, 2, -480.186, -4279.02, 42.9472, 0, 0, 0, 0, 100, 0),
(25155100, 3, -485.03, -4277.41, 42.9472, 0, 0, 0, 0, 100, 0),
(25155100, 4, -485.33, -4266.38, 42.9772, 0, 0, 0, 0, 100, 0),
(25155100, 5, -477.918, -4257.32, 43.036, 0, 0, 0, 0, 100, 0),
(25155100, 6, -460.418, -4256.46, 43.0163, 0, 0, 0, 0, 100, 0),
(25155100, 7, -453.477, -4273.2, 42.7617, 0, 0, 0, 0, 100, 0),
(25155100, 8, -440.504, -4275.93, 42.8664, 0, 0, 0, 0, 100, 0),
(25155100, 9, -425.04, -4273.35, 42.8636, 0, 0, 0, 0, 100, 0),
(25155100, 10, -417.752, -4280.94, 42.921, 0, 0, 0, 0, 100, 0),
(25155100, 11, -418.873, -4286.65, 42.8636, 0, 0, 0, 0, 100, 0),
(25155100, 12, -417.863, -4292.73, 42.8636, 0, 0, 0, 0, 100, 0),
(25155100, 13, -424.293, -4297.46, 42.8636, 0, 0, 0, 0, 100, 0),
(25155100, 14, -438.526, -4296.41, 42.8664, 0, 0, 0, 0, 100, 0),
(25183500, 1, -619.708, -4232.33, 38.2589, 0, 0, 0, 0, 100, 0),
(25183500, 2, -603.811, -4227.38, 38.2589, 0, 0, 0, 0, 100, 0),
(25183500, 3, -586.484, -4235.33, 38.3837, 0, 0, 0, 0, 100, 0),
(25183500, 4, -579.561, -4243.82, 38.2011, 0, 0, 0, 0, 100, 0),
(25183500, 5, -580.416, -4257.49, 37.936, 0, 0, 0, 0, 100, 0),
(25183500, 6, -585.963, -4270.61, 38.0058, 0, 0, 0, 0, 100, 0),
(25183500, 7, -595.823, -4275.16, 37.9299, 0, 0, 0, 0, 100, 0),
(25183500, 8, -606.66, -4274.74, 37.9269, 0, 0, 0, 0, 100, 0),
(25183500, 9, -616.352, -4268.51, 37.9269, 0, 0, 0, 0, 100, 0),
(25183500, 10, -624.01, -4258.87, 38.311, 0, 0, 0, 0, 100, 0),
(25183500, 11, -625.439, -4245.01, 38.311, 0, 0, 0, 0, 100, 0),
(25183200, 1, -606.576, -4157.58, 42.924, 0, 0, 0, 0, 100, 0),
(25183200, 2, -605.964, -4162.5, 42.3746, 0, 0, 0, 0, 100, 0),
(25183200, 3, -605.225, -4169.18, 41.2405, 0, 0, 0, 0, 100, 0),
(25183200, 4, -604.509, -4174.62, 41.2157, 0, 0, 0, 0, 100, 0),
(25183200, 5, -604.053, -4176.94, 41.4357, 0, 0, 0, 0, 100, 0),
(25183200, 6, -605.225, -4169.18, 41.2405, 0, 0, 0, 0, 100, 0),
(25183200, 7, -605.964, -4162.5, 42.3746, 0, 0, 0, 0, 100, 0),
(25183200, 8, -606.576, -4157.58, 42.924, 0, 0, 0, 0, 100, 0),
(25183200, 9, -602.279, -4154.01, 43.1488, 0, 0, 0, 0, 100, 0),
(25183200, 10, -597.214, -4150.29, 42.8619, 0, 0, 0, 0, 100, 0),
(25183200, 11, -592.543, -4144.52, 41.6357, 0, 0, 0, 0, 100, 0),
(25183200, 12, -591.092, -4133.32, 41.9134, 0, 0, 0, 0, 100, 0),
(25183200, 13, -588.382, -4126.85, 43.1996, 0, 0, 0, 0, 100, 0),
(25183200, 14, -586.763, -4122.46, 43.7948, 0, 0, 0, 0, 100, 0),
(25183200, 15, -588.301, -4116.23, 43.9375, 0, 0, 0, 0, 100, 0),
(25183200, 16, -591.976, -4112.17, 44.1535, 0, 0, 0, 0, 100, 0),
(25183200, 17, -597.536, -4110.32, 43.7231, 0, 0, 0, 0, 100, 0),
(25183200, 18, -591.976, -4112.17, 44.1535, 0, 0, 0, 0, 100, 0),
(25183200, 19, -588.301, -4116.23, 43.9375, 0, 0, 0, 0, 100, 0),
(25183200, 20, -586.763, -4122.46, 43.7948, 0, 0, 0, 0, 100, 0),
(25183200, 21, -588.382, -4126.85, 43.1996, 0, 0, 0, 0, 100, 0),
(25183200, 22, -591.092, -4133.32, 41.9134, 0, 0, 0, 0, 100, 0),
(25183200, 23, -592.543, -4144.52, 41.6357, 0, 0, 0, 0, 100, 0),
(25183200, 24, -597.141, -4150.24, 42.8566, 0, 0, 0, 0, 100, 0),
(25183200, 25, -602.279, -4154.01, 43.1488, 0, 0, 0, 0, 100, 0),
(25166900, 1, -600.55, -4351.76, 38.2473, 0, 0, 0, 0, 100, 0),
(25166900, 2, -599.809, -4338.33, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 3, -599.352, -4322.78, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 4, -599.75, -4309.12, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 5, -599.869, -4298.37, 37.8486, 0, 0, 0, 0, 100, 0),
(25166900, 6, -599.75, -4309.12, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 7, -599.352, -4322.78, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 8, -599.809, -4338.33, 37.7236, 0, 0, 0, 0, 100, 0),
(25166900, 9, -600.55, -4351.76, 38.2473, 0, 0, 0, 0, 100, 0),
(25166900, 10, -600.411, -4366.86, 39.235, 0, 0, 0, 0, 100, 0),
(25166900, 11, -600.201, -4384.86, 41.11, 0, 0, 0, 0, 100, 0),
(25166900, 12, -601.33, -4393.56, 42.5243, 0, 0, 0, 0, 100, 0),
(25166900, 13, -600.721, -4405.06, 43.8671, 0, 0, 0, 0, 100, 0),
(25166900, 14, -599.385, -4415.28, 43.2811, 0, 0, 0, 0, 100, 0),
(25166900, 15, -591.313, -4431.69, 42.2791, 0, 0, 0, 0, 100, 0),
(25166900, 16, -584.845, -4446.38, 41.577, 0, 0, 0, 0, 100, 0),
(25166900, 17, -578.171, -4460.08, 42.077, 0, 0, 0, 0, 100, 0),
(25166900, 18, -573.239, -4469.75, 42.237, 0, 0, 0, 0, 100, 0),
(25166900, 19, -569.215, -4478.71, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 20, -568.94, -4487.73, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 21, -570.369, -4498.94, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 22, -581.195, -4514.85, 42.4732, 0, 0, 0, 0, 100, 0),
(25166900, 23, -588.406, -4525.32, 41.6219, 0, 0, 0, 0, 100, 0),
(25166900, 24, -581.195, -4514.85, 42.4732, 0, 0, 0, 0, 100, 0),
(25166900, 25, -570.369, -4498.94, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 26, -568.94, -4487.73, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 27, -569.215, -4478.71, 42.6552, 0, 0, 0, 0, 100, 0),
(25166900, 28, -573.239, -4469.75, 42.237, 0, 0, 0, 0, 100, 0),
(25166900, 29, -578.171, -4460.08, 42.077, 0, 0, 0, 0, 100, 0),
(25166900, 30, -584.845, -4446.38, 41.577, 0, 0, 0, 0, 100, 0),
(25166900, 31, -591.313, -4431.69, 42.2791, 0, 0, 0, 0, 100, 0),
(25166900, 32, -599.385, -4415.28, 43.2811, 0, 0, 0, 0, 100, 0),
(25166900, 33, -600.721, -4405.06, 43.8671, 0, 0, 0, 0, 100, 0),
(25166900, 34, -601.33, -4393.56, 42.5243, 0, 0, 0, 0, 100, 0),
(25166900, 35, -600.185, -4384.87, 41.1041, 0, 0, 0, 0, 100, 0),
(25166900, 36, -600.411, -4366.86, 39.235, 0, 0, 0, 0, 100, 0),
(25177600, 1, -575.834, -4262.37, 38.1957, 0, 0, 0, 0, 100, 0),
(25177600, 2, -579.855, -4270.2, 38.0986, 0, 0, 0, 0, 100, 0),
(25177600, 3, -584.697, -4273.05, 38.2014, 0, 0, 0, 0, 100, 0),
(25177600, 4, -590.693, -4277.27, 38.0591, 0, 0, 0, 0, 100, 0),
(25177600, 5, -599.791, -4279.39, 38.0612, 0, 0, 0, 0, 100, 0),
(25177600, 6, -609.515, -4279.65, 37.9269, 0, 0, 0, 0, 100, 0),
(25177600, 7, -618.276, -4276.28, 37.9269, 0, 0, 0, 0, 100, 0),
(25177600, 8, -624.313, -4268.31, 38.0519, 0, 0, 0, 0, 100, 0),
(25177600, 9, -628.748, -4259.83, 38.311, 0, 0, 0, 0, 100, 0),
(25177600, 10, -629.829, -4249.77, 38.5961, 0, 0, 0, 0, 100, 0),
(25177600, 11, -629.074, -4242.28, 38.311, 0, 0, 0, 0, 100, 0),
(25177600, 12, -626.793, -4235.52, 38.436, 0, 0, 0, 0, 100, 0),
(25177600, 13, -622.845, -4229.02, 38.2589, 0, 0, 0, 0, 100, 0),
(25177600, 14, -617.555, -4226.36, 38.2589, 0, 0, 0, 0, 100, 0),
(25177600, 15, -610.255, -4223.11, 38.2589, 0, 0, 0, 0, 100, 0),
(25177600, 16, -602.202, -4223.97, 38.3839, 0, 0, 0, 0, 100, 0),
(25177600, 17, -594.778, -4225.35, 38.1881, 0, 0, 0, 0, 100, 0),
(25177600, 18, -587.299, -4230.13, 38.5372, 0, 0, 0, 0, 100, 0),
(25177600, 19, -581.744, -4236.37, 38.1127, 0, 0, 0, 0, 100, 0),
(25177600, 20, -576.046, -4245.43, 38.186, 0, 0, 0, 0, 100, 0),
(25177600, 21, -574.23, -4256.41, 38.061, 0, 0, 0, 0, 100, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (39317) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(39317, 0, 0, 0, 9, 0, 100, 0, 5, 30, 2300, 3000, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northwatch Scout - In Range 5-30 yd - Cast \'Shoot\''),
(39317, 0, 1, 0, 9, 0, 100, 0, 0, 5, 2000, 2000, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Northwatch Scout - In Range 0-5 yd - Enable Movement'),
(39317, 0, 2, 0, 9, 0, 100, 0, 0, 10, 15000, 22000, 11, 79584, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Northwatch Scout - Within 0-10 Range - Cast \'Fan of Knives\'');

-- Lazy Peons SAI Re-work (Remove scriptname: npc_lazy_peon)
SET @LAZY_PEON := 10556;

UPDATE `creature_template` SET `AIName`='SmartAI', `MovementType`=0, `ScriptName`='' WHERE `entry`=@LAZY_PEON;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id` IN (@LAZY_PEON);

DELETE FROM `creature_text` WHERE `CreatureID` IN (@LAZY_PEON);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `TextRange`, `comment`) VALUES 
(@LAZY_PEON, 0, 0, 'Ow! OK, I\'ll get back to work, $N!', 12, 0, 100, 0, 0, 0, 0, 'Lazy Peon'),
(@LAZY_PEON, 0, 1, 'Sleepy... so sleepy...', 12, 0, 100, 0, 0, 0, 0, 'Lazy Peon'),
(@LAZY_PEON, 0, 2, 'OK boss, I get back to tree-hitting.', 12, 0, 100, 0, 0, 0, 0, 'Lazy Peon');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13) AND `sourceEntry` IN (19938);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 19938, 0, 0, 31, 0, 3, @LAZY_PEON, 0, 0, 0, 0, '', 'Spell hits only Lazy `Peons'),
(13, 1, 19938, 0, 0, 31, 1, 17743, 0, 0, 0, 0, 0, '', 'Spells hits only if target has an sleep aura');

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@LAZY_PEON) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@LAZY_PEON*100,@LAZY_PEON*100+1,@LAZY_PEON*100+2) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@LAZY_PEON, 0, 0, 0, 60, 0, 100, 1, 100, 200, 0, 0, 88, @LAZY_PEON*100, @LAZY_PEON*100+1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Update - Run Random Script'),
(@LAZY_PEON, 0, 1, 0, 8, 0, 100, 1, 19938, 0, 0, 0, 80, @LAZY_PEON*100+2, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lazy Peon - On Spellhit - Run Script'),
(@LAZY_PEON*100, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Aura Sleep'),
(@LAZY_PEON*100, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Emote State 0'),
(@LAZY_PEON*100, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Weapon Sheated'),
(@LAZY_PEON*100, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Random Move On'),
(@LAZY_PEON*100, 9, 4, 0, 0, 0, 100, 1, 45000, 45000, 0, 0, 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Reset Script'),
(@LAZY_PEON*100+1, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Emote State 0'),
(@LAZY_PEON*100+1, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Weapon Sheated'),
(@LAZY_PEON*100+1, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 89, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Random Move Off'),
(@LAZY_PEON*100+1, 9, 3, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 89, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Set Random Move Off'),
(@LAZY_PEON*100+1, 9, 4, 0, 0, 0, 100, 1, 0, 0, 0, 0, 75, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Add Aura Sleep'),
(@LAZY_PEON*100+2, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Say 0'),
(@LAZY_PEON*100+2, 9, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 33, @LAZY_PEON, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Script - Credit'),
(@LAZY_PEON*100+2, 9, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 28, 17743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Remove Aura'),
(@LAZY_PEON*100+2, 9, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 69, 1, 0, 0, 3, 0, 0, 15, 175784, 30, 0, 0, 0, 0, 0, 'Script - Move to Nearest Lumber Pile'),
(@LAZY_PEON*100+2, 9, 4, 0, 0, 0, 100, 1, 1800, 1800, 0, 0, 66, 0, 0, 0, 0, 0, 0, 15, 175784, 5, 0, 0, 0, 0, 0, 'Script - Add Work State'),
(@LAZY_PEON*100+2, 9, 5, 0, 0, 0, 100, 1, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Weapon Sheat'),
(@LAZY_PEON*100+2, 9, 6, 0, 0, 0, 100, 1, 0, 0, 0, 0, 17, 234, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Add Work State'),
(@LAZY_PEON*100+2, 9, 7, 0, 0, 0, 100, 1, 60000, 60000, 0, 0, 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Script - Reset Script');