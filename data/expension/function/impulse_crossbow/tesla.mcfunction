particle minecraft:electric_spark ~ ~ ~ 1 1 1 0 10 normal
particle minecraft:entity_effect{color:[0.85,0.75,0.26,1]} ~ ~ ~ 0.8 0.8 0.8 0 2 normal

effect give @e[type=#expension:include_player,distance=..2.5] glowing 1 0 true
execute as @e[type=#expension:include_player,distance=..2.5] run damage @s 1 lightning_bolt

scoreboard players remove @s expension_impulse_crossbow_marker 1
execute if score @s expension_impulse_crossbow_marker matches 0 run kill