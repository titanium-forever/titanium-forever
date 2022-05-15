-- Disable Gloomingdeep tutorial zone
UPDATE rule_values SET rule_value=0 WHERE rule_name='World:TutorialZoneID';
UPDATE rule_values SET rule_value=0 WHERE rule_name='World:MaxLevelForTutorial';
UPDATE rule_values SET rule_value='false' WHERE rule_name='World:EnableTutorialButton';
