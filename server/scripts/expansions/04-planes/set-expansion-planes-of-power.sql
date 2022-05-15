-- Set expansion to Planes of Power
UPDATE variables SET value=15 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=4 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=15 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=15 WHERE rule_name='Bots:BotExpansionSettings';
