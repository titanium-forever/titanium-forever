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
-- Set faction to Ak'Anon Zoo instead of Meldrath
UPDATE npc_types SET npc_faction_id=1060 WHERE id=55081;
