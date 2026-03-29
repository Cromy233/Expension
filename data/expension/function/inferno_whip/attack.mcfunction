particle minecraft:flame ^ ^1 ^2 0.66 0.33 0.66 0.1 6 normal
particle minecraft:lava ^ ^0.5 ^2 0.66 0 0.66 0 3 normal

execute positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] if data entity @s Owner run tag @s add inferno_whip_exclude

execute unless predicate expension:holding/inferno_whip/fire_aspect_lv1 unless predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run damage @s 4 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]
execute if predicate expension:holding/inferno_whip/fire_aspect_lv1 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run damage @s 5 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]
execute if predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run damage @s 6 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]

execute unless predicate expension:holding/inferno_whip/knockback_lv1 unless predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run data merge entity @s {Motion:[0f,0.2f,0f]}
execute if predicate expension:holding/inferno_whip/knockback_lv1 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run data merge entity @s {Motion:[0f,0.3f,0f]}
execute if predicate expension:holding/inferno_whip/knockback_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run data merge entity @s {Motion:[0f,0.4f,0f]}

execute positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run attribute @s knockback_resistance modifier add expension:inferno_whip 1 add_value
#execute positioned ^ ^ ^2 as @e[type=#expension:mobs,tag=!inferno_whip_exclude,distance=..2] run data modify entity @s NoAI set value true

tag @e[tag=inferno_whip_exclude] remove inferno_whip_exclude
schedule function expension:inferno_whip/clear 1t replace

advancement revoke @s only expension:check/inferno_whip_attack