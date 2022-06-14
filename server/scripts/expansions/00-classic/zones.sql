-- Set original PoHate status level to allow non-GM players
UPDATE zone SET min_status=0 WHERE short_name="hateplane";
