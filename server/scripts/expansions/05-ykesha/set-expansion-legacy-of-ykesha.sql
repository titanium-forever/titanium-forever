-- Set expansion to Legacy of Ykesha
UPDATE variables SET value=31 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=5 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=31 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=31 WHERE rule_name='Bots:BotExpansionSettings';
