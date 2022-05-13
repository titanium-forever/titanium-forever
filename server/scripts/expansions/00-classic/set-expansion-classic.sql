-- Set expansion to Classic
UPDATE variables SET value=0 WHERE varname='Expansions';
UPDATE rule_values SET rule_value=0 WHERE rule_name = 'Expansion:CurrentExpansion';
UPDATE rule_values SET rule_value=0 WHERE rule_name='World:ExpansionSettings';
UPDATE rule_values SET rule_value=0 WHERE rule_name='Bots:BotExpansionSettings';

