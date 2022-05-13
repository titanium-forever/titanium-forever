-- Set expansion to Scars of Velious
UPDATE variables SET value=3 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=2 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=3 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=3 WHERE rule_name='Bots:BotExpansionSettings';
