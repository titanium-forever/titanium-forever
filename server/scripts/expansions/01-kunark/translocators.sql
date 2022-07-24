-- Translocator Tradil (Oasis - 37066)
-- Get next spawn ID
SET @nextspawnid := (SELECT MAX(id) FROM spawngroup) + 1;

-- Create Spawngroup
INSERT INTO spawngroup 
(id,name)
VALUES
(@nextspawnid,(CONCAT("oasis_",@nextspawnid)));

-- Add NPC to spawngroup
INSERT INTO spawnentry (spawngroupID,npcID,chance)
VALUES
(@nextspawnid,37066,100);

-- Create spawn point
INSERT INTO spawn2
(spawngroupID,zone,version,x,y,z,heading,respawntime,variance,pathgrid,path_when_zone_idle,_condition,cond_value,enabled,animation,min_expansion,max_expansion,content_flags,content_flags_disabled) 
VALUES 
(@nextspawnid,"oasis","0","-840","890","1","0","600","0","","0","0","1","1","0","1","-1",NULL,NULL);

-- Translocator Breya (Overthere - 93157)
-- Get next spawn ID
SET @nextspawnid := (SELECT MAX(id) FROM spawngroup) + 1;

-- Create Spawngroup
INSERT INTO spawngroup 
(id,name)
VALUES
(@nextspawnid,(CONCAT("overthere_",@nextspawnid)));

-- Add NPC to spawngroup
INSERT INTO spawnentry (spawngroupID,npcID,chance)
VALUES
(@nextspawnid,93157,100);

-- Create spawn point
INSERT INTO spawn2
(spawngroupID,zone,version,x,y,z,heading,respawntime,variance,pathgrid,path_when_zone_idle,_condition,cond_value,enabled,animation,min_expansion,max_expansion,content_flags,content_flags_disabled) 
VALUES 
(@nextspawnid,"overthere","0","2730","3450","-157","0","600","0","","0","0","1","1","0","1","-1",NULL,NULL);

-- Translocator Jorbin (Timorous - 96070)
-- Get next spawn ID
SET @nextspawnid := (SELECT MAX(id) FROM spawngroup) + 1;

-- Create Spawngroup
INSERT INTO spawngroup 
(id,name)
VALUES
(@nextspawnid,(CONCAT("timorous_",@nextspawnid)));

-- Add NPC to spawngroup
INSERT INTO spawnentry (spawngroupID,npcID,chance)
VALUES
(@nextspawnid,96070,100);

-- Create spawn point
INSERT INTO spawn2
(spawngroupID,zone,version,x,y,z,heading,respawntime,variance,pathgrid,path_when_zone_idle,_condition,cond_value,enabled,animation,min_expansion,max_expansion,content_flags,content_flags_disabled) 
VALUES 
(@nextspawnid,"timorous","0","3620","5860","3","0","600","0","","0","0","1","1","0","1","-1",NULL,NULL);
