-- Set spell effect of Alter Plane: Hate (and II) to point to original PoHate instead of the revamp.
UPDATE spells_new SET teleport_zone="hateplane",effect_base_value1="-374",effect_base_value2="-353",effect_base_value3="3.75" WHERE id=666;
UPDATE spells_new SET teleport_zone="hateplane",effect_base_value1="-374",effect_base_value2="-353",effect_base_value3="3.75" WHERE id=3849;

-- Set Circle of Lavastorm spell to correct coordinates for classic zone
UPDATE spells_new SET effect_base_value1="1036",effect_base_value2="1386",effect_base_value3="129" WHERE id=554;

-- Set Circle of Steamfont spell to correct coordinates for classic zone
UPDATE spells_new SET effect_base_value1="-1856",effect_base_value2="1662",effect_base_value3="-106" WHERE id=557;
