-- Set expansion to Depths of Darkhollow
UPDATE variables SET value=1023 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=10 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=1023 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=1023 WHERE rule_name='Bots:BotExpansionSettings';
