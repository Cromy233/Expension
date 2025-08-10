tag @s add frost_bow_arrow
summon marker ~ ~ ~ {Tags:["frost_bow_marker"]}
execute as @n[tag=frost_bow_marker] run ride @s mount @n[tag=frost_bow_arrow,tag=!frost_bow_arrow_fallin]
execute if entity @s[nbt=!{Fire:-1s}] on passengers run data modify entity @s Fire set value 1s
data modify entity @s Fire set value 0
data modify entity @s NoGravity set value 1b