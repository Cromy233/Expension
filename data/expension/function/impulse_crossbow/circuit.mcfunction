# circuit run evert tick
execute positioned ~ ~-1 ~ as @e[type=#expension:include_player,distance=..1] run damage @s 1 player_attack
particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 1 normal

scoreboard players remove @s expension_impulse_crossbow_marker 1
execute if score @s expension_impulse_crossbow_marker matches 0 run kill