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

-- Oasis to North Ro should maintain longitude and not get characters stuck in the ground
UPDATE zone_points SET target_x="999999",target_y="-1876",target_z="999999",target_heading="999" WHERE id=692;

-- North Ro to Oasis should maintain longitude
UPDATE zone_points SET target_x="999999",target_y="2501.1",target_z="999999",target_heading="999" WHERE id=687;

--------------------
---- Zone Data -----
--------------------

-- Erud's Crossing should be set to Classic, not Kunark
UPDATE zone SET expansion="1" WHERE short_name="erudsxing";

--------------------
------ NPCs --------
--------------------

-- Translocators Setikan, Narrik, Sedina, Eniela and Jempar should all be able to respond to hidden and invis players
UPDATE npc_types SET see_invis="1",see_invis_undead="1",see_hide="1" WHERE id IN (10155,409255,1135,24101,98045);
