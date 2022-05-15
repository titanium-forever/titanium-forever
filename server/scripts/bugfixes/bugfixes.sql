--------------------
------ SPAWNS ------ 
--------------------

-------------
-- Ak'Anon --
-------------

-- Remove A Lesser Minotaur from the Steamfont zone area
-- Forum bug URL: http://www.projecteq.net/forums/index.php?threads/akanon-a-lesser-minotaur-spawning-in-wrong-place.17355/
-- Temp fix, remove the mino. Longer term fix should be to remove pathgrid and fix spawn location
UPDATE spawn2 SET enabled=0 WHERE id=72032;

---------------
-- Steamfont --
---------------

-- Make Feddi Dooger a unique spawn
-- Forum bug URL: http://www.projecteq.net/forums/index.php?threads/feddi-dooger-should-be-unique-spawn.17354/
UPDATE npc_types SET unique_spawn_by_name="1" WHERE id="56158";

