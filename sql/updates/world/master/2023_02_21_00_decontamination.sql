ALTER TABLE `creature_template` ADD COLUMN `InhabitType` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `ScriptName`;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 46185;	-- Make Sanitron 500 able to Fly
UPDATE `creature_template` SET `npcflag` = 16777216 WHERE `entry` = 46185; -- Enable spellclick
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 46185; -- Enable use of SmartScript for Sanitron 500

UPDATE `quest_objectives` SET Type = 0 WHERE `ID` = 276135; -- Change objective for "kill credit spell"

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Sanitron 500
(46185,0,0,1,25,0,100,0,0,0,0,0, 66,0,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - On Reset - Set Home Position"),
(46185,0,1,2,25,0,100,0,0,0,0,0, 22,1,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - On Reset - Set Phase 1"),
(46185,0,2,0,27,1,100,0,0,0,0,0, 80,4618500,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Start Decontamination Script"),
-- Sanitron 500 - Script
(4618500,9,0,1,0,1,100,0,0,0,0,0, 22,2,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Script - Set Phase 2"),
(4618500,9,1,2,0,2,100,0,0,0,0,0, 1,0,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Script - Say 0"),
(4618500,9,2,3,0,2,100,0,0,0,0,0, 11,176908,0,0,0,0,0, 29,0,0,0,0,0,0,0, "Sanitron 500 - Script - Cast Decontamination Credit'"),
(4618500,9,3,4,0,2,100,0,2000,2000,0,0, 69,0,0,0,0,0,0, 8,0,0,0,-5173.94,725.62,291.387,0, "Sanitron 500 - Script - Move To Waypoint 1"),
(4618500,9,4,5,0,2,100,0,3000,3000,0,0, 86,0,0,19,0,0,0, 0,0,0,0,0,0,0,0, "Sanitron 500 - Script - Animation 1 [placeholder]"),
(4618500,9,5,6,0,2,100,0,1000,1000,0,0, 69,0,0,0,0,0,0, 8,0,0,0,-5174.56,716.36,289.387,0, "Sanitron 500 - Script - Move To Waypoint 2"),
(4618500,9,6,7,0,2,100,0,3000,3000,0,0, 86,0,0,19,0,0,0, 0,0,0,0,0,0,0,0, "Sanitron 500 - Script - Animation 2 [placeholder]"),
(4618500,9,7,8,0,2,100,0,2000,2000,0,0, 69,0,0,0,0,0,0, 8,0,0,0,-5175.21,707.18,291.887,0, "Sanitron 500 - Script - Move To Waypoint 3"),
(4618500,9,8,9,0,2,100,0,3000,3000,0,0, 86,0,0,19,0,0,0, 0,0,0,0,0,0,0,0, "Sanitron 500 - Script - Animation 3 [placeholder]"),
(4618500,9,9,10,0,2,100,0,1500,1500,0,0, 1,1,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Script - Say 1"),
(4618500,9,10,11,0,2,100,0,0,0,0,0, 28,80653,0,0,0,0,0, 29,0,0,0,0,0,0,0, "Sanitron 500 - Script - Remove Irradiated Aura"),
(4618500,9,11,12,0,2,100,0,1000,1000,0,0, 69,0,0,0,0,0,0, 8,0,0,0,-5175.98,700.18,291.387,0, "Sanitron 500 - Script - Move To Waypoint 4"),
(4618500,9,12,13,0,2,100,0,2000,2000,0,0, 1,2,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Script - Say 2"),
(4618500,9,13,14,0,2,100,0,0,0,0,0, 37,0,0,0,0,0,0, 1,0,0,0,0,0,0,0,"Sanitron 500 - Script - Die"),
(4618500,9,14,0,0,2,100,0,0,0,0,0, 22,1,0,0,0,0,0, 1,0,0,0,0,0,0,0, "Sanitron 500 - Script - Set Phase 1");