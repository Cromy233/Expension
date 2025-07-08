fill ~ ~ ~ ~ ~ ~ minecraft:packed_ice replace #expension:frost_bow_replaceable strict
execute align xyz run particle snowflake ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0 20 normal
execute on passengers run scoreboard players reset @s expension_frost_bow_marker
execute on passengers run kill
kill