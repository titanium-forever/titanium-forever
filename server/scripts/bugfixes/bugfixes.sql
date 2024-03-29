--------------------
------ SPAWNS ------ 
--------------------

-------------
-- Ak'Anon --
-------------

-- Stop A Lesser Minotaur from wandering out of the zoo and appearing at the Steamfont zone line.
-- Forum bug URL: http://www.projecteq.net/forums/index.php?threads/akanon-a-lesser-minotaur-spawning-in-wrong-place.17355/
-- Set pathgrid to off to stop it wandering through walls
UPDATE spawn2 SET pathgrid=0 WHERE id=72032;

------------------
-- Butcherblock --
------------------

-- Translocator Gethia should spawn when Kunark is enabled, not classic
UPDATE spawn2 SET min_expansion=1 WHERE spawngroupID=275105;

-----------
-- Oggok --
-----------

-- Mooglan should spawn with PoP not LoY
UPDATE spawn2 SET min_expansion=4 WHERE spawngroupID=7605;

---------------
-- Steamfont --
---------------

-- Make Feddi Dooger a unique spawn
-- Forum bug URL: http://www.projecteq.net/forums/index.php?threads/feddi-dooger-should-be-unique-spawn.17354/
UPDATE npc_types SET unique_spawn_by_name="1" WHERE id="56158";

--------------------
----- FACTIONS -----
--------------------

-------------
-- Ak'Anon --
-------------

-- A Lesser Minotaur should be aligned to Ak'Anon Zoo rather than Meldrath
UPDATE npc_types SET npc_faction_id=1060 WHERE id=55081;

--------------------
---- Zone Lines ----
--------------------

-- East Commonlands to West Freeport
UPDATE zone_points SET target_x="775",target_y="999999",target_z="-24",target_heading="999" WHERE id=51;

-- East Freeport to North Ro
UPDATE zone_points SET target_x="999999",target_y="4154",target_z="-24",target_heading="999" WHERE id=379;
-- East Freeport to West Freeport
UPDATE zone_points SET target_x="-622",target_y="-418",target_z="-24",target_heading="999" WHERE id=377;
UPDATE zone_points SET target_x="-926",target_y="-84",target_z="-24",target_heading="999" WHERE id=378;
UPDATE zone_points SET target_x="-1632",target_y="-740",target_z="-94",target_heading="999" WHERE id=380;

-- North Freeport to West Freeport
UPDATE zone_points SET target_x="-700",target_y="267",target_z="-24",target_heading="999" WHERE id=392;
UPDATE zone_points SET target_x="-124",target_y="227",target_z="-10",target_heading="999" WHERE id=393;
UPDATE zone_points SET target_x="-275",target_y="1590",target_z="4",target_heading="999" WHERE id=394;

-- North Ro to East Freeport
UPDATE zone_points SET target_x="999999",target_y="-1097",target_z="-52",target_heading="999" WHERE id=686;
-- North Ro to Oasis should maintain longitude
UPDATE zone_points SET target_x="999999",target_y="2501.1",target_z="999999",target_heading="999" WHERE id=687;

-- Oasis to North Ro
UPDATE zone_points SET target_x="999999",target_y="-1876",target_z="999999",target_heading="999" WHERE id=692;

-- SolA to Lavastorm
UPDATE zone_points SET min_expansion="9" WHERE id=910;
INSERT INTO `zone_points` (`zone`,`number`,`target_x`,`target_y`,`target_z`,`target_heading`,`target_zone_id`,`min_expansion`,`max_expansion`)
	SELECT 'soldunga','1','226','783','131','999','27','0','8'
	WHERE NOT EXISTS (SELECT * FROM `zone_points`
    	WHERE `zone`='soldunga' AND `target_zone_id`='27' AND `min_expansion`='0' AND `max_expansion`='8');

-- SolB to Lavastorm
UPDATE zone_points SET min_expansion="9" WHERE id=1147;
INSERT INTO `zone_points` (`zone`,`number`,`target_x`,`target_y`,`target_z`,`target_heading`,`target_zone_id`,`min_expansion`,`max_expansion`)
	SELECT 'soldungb','1','485','915','56','999','27','0','8'
	WHERE NOT EXISTS (SELECT * FROM `zone_points`
    	WHERE `zone`='soldungb' AND `target_zone_id`='27' AND `min_expansion`='0' AND `max_expansion`='8');

-- West Freeport to East Commonlands
UPDATE zone_points SET target_x="-1592",target_y="999999",target_z="-50",target_heading="999" WHERE id=387;
-- West Freeport to East Freeport
UPDATE zone_points SET target_x="-360",target_y="448",target_z="-24",target_heading="999" WHERE id=385;
UPDATE zone_points SET target_x="-64",target_y="100",target_z="-24",target_heading="999" WHERE id=386;
UPDATE zone_points SET target_x="344",target_y="-155",target_z="-94",target_heading="999" WHERE id=390;
-- West Freeport to North Freeport
UPDATE zone_points SET target_x="-83",target_y="-376",target_z="-24",target_heading="999" WHERE id=383;
UPDATE zone_points SET target_x="491",target_y="-415",target_z="-10",target_heading="999" WHERE id=384;
UPDATE zone_points SET target_x="722",target_y="372",target_z="-10",target_heading="999" WHERE id=388;

--------------------
---- Zone Data -----
--------------------

-- Erud's Crossing should be set to Classic, not Kunark
UPDATE zone SET expansion="1" WHERE short_name="erudsxing";

--------------------
------ NPCs --------
--------------------

-- Translocators should all be able to respond to hidden and invis players, and also not be able to be attacked
UPDATE npc_types SET see_invis="1",see_invis_undead="1",see_hide="1",special_abilities="19,1^20,1^24,1^35,1" WHERE id IN (10155,69088,1135,24101,98045,68134,68135,37066,93157,96070,96071);
