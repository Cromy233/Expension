tag @s add expension_frost_bow_arrow_affected
data modify entity @s NoGravity set value 1b
data merge entity @s {data:{frost:1b},crit:0b}
scoreboard players set @s expension_frost_bow_arrow 50