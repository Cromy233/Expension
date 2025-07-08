execute as @e[tag=frost_bow_arrow] run data modify entity @s NoGravity set value 0b
#execute as @e[tag=frost_bow_arrow] on passengers run scoreboard players reset @s expension_frost_bow_marker
execute as @e[tag=frost_bow_arrow] on passengers run kill
tag @e[tag=frost_bow_arrow] add frost_bow_arrow_fallin
tag @e[tag=frost_bow_arrow] remove frost_bow_arrow