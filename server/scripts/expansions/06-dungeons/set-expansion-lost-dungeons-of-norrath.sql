-- Set expansion to Lost Dungeons of Norrath
UPDATE variables SET value=63 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=6 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=63 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=63 WHERE rule_name='Bots:BotExpansionSettings';
