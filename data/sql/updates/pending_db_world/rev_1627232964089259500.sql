INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1627232964089259500');

-- Set the Creature Spiteflayer a patrol route movement and reduced movement speed
UPDATE `creature_template` SET `MovementType` = 2, `speed_walk` = 1 WHERE (`entry` = 8299);
UPDATE `creature` SET  `MovementType` = 2  WHERE (`id` = 8299) AND (`guid` IN (38089, 134366));

-- Delete previous routes
DELETE FROM `creature_addon` WHERE (`guid` IN (38089, 134366, 134367, 134368, 134369, 134370, 134371, 134372, 134373, 134374, 134375, 134376, 134377, 134378, 134379));

-- Add new routes
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(38089, 380890, 0, 0, 0, 0, 0, NULL),
(134366, 1343660, 0, 0, 0, 0, 0, NULL),
(134367, 1343670, 0, 0, 0, 0, 0, NULL),
(134368, 1343680, 0, 0, 0, 0, 0, NULL),
(134369, 1343690, 0, 0, 0, 0, 0, NULL),
(134370, 1343700, 0, 0, 0, 0, 0, NULL),
(134371, 1343710, 0, 0, 0, 0, 0, NULL),
(134372, 1343720, 0, 0, 0, 0, 0, NULL),
(134373, 1343730, 0, 0, 0, 0, 0, NULL),
(134374, 1343740, 0, 0, 0, 0, 0, NULL),
(134375, 1343750, 0, 0, 0, 0, 0, NULL),
(134376, 1343760, 0, 0, 0, 0, 0, NULL),
(134377, 1343770, 0, 0, 0, 0, 0, NULL),
(134378, 1343780, 0, 0, 0, 0, 0, NULL),
(134379, 1343790, 0, 0, 0, 0, 0, NULL);

-- Delete all waypoints routes
DELETE FROM `waypoint_data` WHERE (`id` IN (380890, 1343660, 1343670, 1343680, 1343690, 1343700, 1343710, 1343720, 1343730, 1343740, 1343750, 1343760, 1343770, 1343780, 1343790));

-- Added patrolling around the ruined towers and on Serpent Coil
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
-- Waypoint route 1 (GUID: 38089)
(380890,1,-11518.40,-3204.284,8.26,0,0,0,0,100,0),
(380890,2,-11437.358,-3310.323,7.945,0,0,0,0,100,0),
(380890,3,-11311.348,-3370.686,7.628,0,0,0,0,100,0),
(380890,4,-11216.27,-3341.978,5.003,0,0,0,0,100,0),
(380890,5,-11193.522,-3292.800,9.222,0,0,0,0,100,0),
(380890,6,-11199.982,-3201.657,8.01,0,5000,0,0,100,0),
(380890,7,-11193.522,-3292.800,9.222,0,0,0,0,100,0),
(380890,8,-11216.27,-3341.978,5.003,0,0,0,0,100,0),
(380890,9,-11311.348,-3370.686,7.628,0,0,0,0,100,0),
(380890,10,-11437.358,-3310.323,7.945,0,0,0,0,100,0),
(380890,11,-11518.40,-3204.284,8.26,0,0,0,0,100,0),
-- Waypoint route 2 (GUID: 134366)
(1343660,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343660,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343660,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343660,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343660,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343660,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343660,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343660,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343660,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 3 (GUID: 134367)
(1343670,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343670,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343670,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343670,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343670,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343670,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343670,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343670,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343670,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 4 (GUID: 134368)
(1343680,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343680,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343680,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343680,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343680,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343680,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343680,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343680,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343680,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 5 (GUID: 134369)
(1343690,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343690,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343690,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343690,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343690,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343690,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343690,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343690,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343690,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 6 (GUID: 134370)
(1343700,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343700,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343700,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343700,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343700,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343700,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343700,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343700,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343700,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 7 (GUID: 134371)
(1343710,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343710,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343710,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343710,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343710,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343710,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343710,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343710,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343710,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 8 (GUID: 134372)
(1343720,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343720,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343720,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343720,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343720,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343720,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343720,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343720,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343720,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 9 (GUID: 134373)
(1343730,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343730,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343730,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343730,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343730,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343730,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343730,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343730,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343730,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 10 (GUID: 134374)
(1343740,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343740,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343740,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343740,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343740,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343740,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343740,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343740,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343740,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 11 (GUID: 134375)
(1343750,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343750,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343750,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343750,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343750,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343750,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343750,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343750,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343750,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 12 (GUID: 134376)
(1343760,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343760,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343760,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343760,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343760,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343760,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343760,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343760,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343760,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 13 (GUID: 134377)
(1343770,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343770,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343770,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343770,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343770,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343770,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343770,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343770,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343770,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 14 (GUID: 134378)
(1343780,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343780,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343780,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343780,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343780,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343780,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343780,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343780,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343780,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0),
-- Waypoint route 15 (GUID: 134379)
(1343790,1,-11539.215,-3334.62,14.56,0,0,0,0,100,0),
(1343790,2,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343790,3,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343790,4,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343790,5,-11294.761,-3359.196,8.647,0,5000,0,0,100,0),
(1343790,6,-11333.39,-3373.223,7.699,0,0,0,0,100,0),
(1343790,7,-11361.722,-3345.695,7.586,0,0,0,0,100,0),
(1343790,8,-11434.73,-3319.644,8.44,0,0,0,0,100,0),
(1343790,9,-11539.215,-3334.62,14.56,0,5000,0,0,100,0);
