-- quest 26078 http://www.wowhead.com/quest=26078/extinguish-the-fires


UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=42046;


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 42046; 

/* Table smart_scripts */ DELETE FROM `smart_scripts` WHERE (source_type = 0 AND entryorguid = 42046);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(42046, 0, 0, 1, 8, 0, 100, 0, 78369, 0, 5000, 5000, 33, 42046, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'killcredit on spellhit');