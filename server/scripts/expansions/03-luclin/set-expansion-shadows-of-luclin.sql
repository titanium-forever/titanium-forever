-- Set expansion to Shadows of Luclin
UPDATE variables SET value=7 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=3 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=7 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=7 WHERE rule_name='Bots:BotExpansionSettings';
