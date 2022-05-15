-- Set expansion to Gates of Discord
UPDATE variables SET value=127 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=7 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=127 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=127 WHERE rule_name='Bots:BotExpansionSettings';
