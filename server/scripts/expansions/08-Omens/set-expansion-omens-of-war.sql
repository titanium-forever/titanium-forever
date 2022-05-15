-- Set expansion to Omens of War
UPDATE variables SET value=255 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=8 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=255 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=255 WHERE rule_name='Bots:BotExpansionSettings';
