tag @s add expension_frost_bow_legacy_arrow
summon marker ~ ~ ~ {Tags:["expension_frost_bow_legacy_marker"]}
execute as @n[tag=expension_frost_bow_legacy_marker,tag=!expension_frost_bow_legacy_marker_used] run ride @s mount @n[tag=expension_frost_bow_legacy_arrow,tag=!expension_frost_bow_legacy_arrow_fallin]
execute on passengers run tag @s add expension_frost_bow_legacy_marker_used
execute if entity @s[nbt=!{Fire:-1s}] on passengers run data modify entity @s Fire set value 1s

data modify entity @s Fire set value 0
data modify entity @s NoGravity set value 1b