-- Set expansion to Ruins of Kunark
UPDATE variables SET value=1 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=1 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=1 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=1 WHERE rule_name='Bots:BotExpansionSettings';
