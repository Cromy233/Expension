particle minecraft:flame ^ ^1 ^0 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.3 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.6 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.9 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.2 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.5 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.8 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^2.1 0 0 0 0.01 1 normal
particle minecraft:lava ^ ^0.5 ^2 0.33 0 0.33 0 10 normal

execute unless predicate expension:holding/inferno_whip/fire_aspect_lv1 unless predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 4.5 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]
execute if predicate expension:holding/inferno_whip/fire_aspect_lv1 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 5.5 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]
execute if predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 6.5 player_attack by @p[advancements={expension:check/inferno_whip_attack=true}]

execute unless predicate expension:holding/inferno_whip/knockback_lv1 unless predicate expension:holding/inferno_whip/fire_aspect_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run data merge entity @s {Motion:[0f,0.2f,0f]}
execute if predicate expension:holding/inferno_whip/knockback_lv1 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run data merge entity @s {Motion:[0f,0.3f,0f]}
execute if predicate expension:holding/inferno_whip/knockback_lv2 positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run data merge entity @s {Motion:[0f,0.4f,0f]}

execute positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run attribute @s knockback_resistance modifier add expension:inferno_whip 1 add_value
#execute positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run data modify entity @s NoAI set value true

schedule function expension:inferno_whip_clear 1t replace

advancement revoke @s only expension:check/inferno_whip_attack