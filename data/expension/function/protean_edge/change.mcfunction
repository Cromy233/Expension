

execute store result score @s expension_protean_edge_type run random value 0..4
execute if predicate expension:random/0.05chance run scoreboard players set @s expension_protean_edge_type 7
scoreboard players set @s expension_protean_edge_cooldown 100

execute unless score @s expension_protean_edge_type matches 2 unless score @s expension_protean_edge_type matches 7 run item modify entity @s weapon.mainhand expension:protean_edge/ensword

execute if score @s expension_protean_edge_type matches 0 run item modify entity @s weapon.mainhand expension:protean_edge/0
execute if score @s expension_protean_edge_type matches 1 run item modify entity @s weapon.mainhand expension:protean_edge/1
execute if score @s expension_protean_edge_type matches 2 run item modify entity @s weapon.mainhand expension:protean_edge/2
execute if score @s expension_protean_edge_type matches 3 run item modify entity @s weapon.mainhand expension:protean_edge/3
execute if score @s expension_protean_edge_type matches 4 run item modify entity @s weapon.mainhand expension:protean_edge/4

execute if score @s expension_protean_edge_type matches 7 run item modify entity @s weapon.mainhand expension:protean_edge/7
# 原本打算做7把剑，不过做不动了，以后想到什么再加吧。

execute if score @s expension_protean_edge_type matches 2 run item modify entity @s weapon.mainhand expension:protean_edge/unsword
execute if score @s expension_protean_edge_type matches 7 run item modify entity @s weapon.mainhand expension:protean_edge/unsword