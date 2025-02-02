
-- Quest The Elder Crone ID 28140

-- Magatha Grimtotem SAI
SET @ENTRY := 47718;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,64,0,100,512,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magatha Grimtotem - On Gossip Hello - Run Script"),
(@ENTRY*100+00,9,0,0,0,0,100,0,0,0,0,0,72,45776,0,0,0,0,0,7,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Close Gossip"),
(@ENTRY*100+00,9,1,0,0,0,100,0,1000,1000,0,0,11,47334,0,0,0,0,0,19,24021,25,0,0,0,0,0,"Magatha Grimtotem - On Script - Cast 'Ley Line Beam (no cast kit)'"),
(@ENTRY*100+00,9,2,0,0,0,100,0,3000,3000,0,0,33,47718,0,0,0,0,0,7,0,0,0,0,0,0,0,"Magatha Grimtotem - On Script - Quest Credit ''");
