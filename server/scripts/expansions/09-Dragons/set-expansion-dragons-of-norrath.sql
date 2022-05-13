-- Set expansion to Dragons of Norrath
UPDATE variables SET value=511 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=9 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=511 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=511 WHERE rule_name='Bots:BotExpansionSettings';
