
-- Cage de l SAI
SET @ENTRY := 211885;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,0,0,0,0,33,61788,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cage de l - On Gossip Hello - Quest Credit ''"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,10615985,0,0,0,0,0,0,"Cage de l - On Gossip Hello - Set Data 1 1");
