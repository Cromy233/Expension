particle minecraft:flame ^ ^1 ^0 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.3 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.6 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^0.9 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.2 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.5 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^1.8 0 0 0 0.01 1 normal
particle minecraft:flame ^ ^1 ^2.1 0 0 0 0.01 1 normal
particle minecraft:lava ^ ^0.5 ^2 0.33 0 0.33 0 10 normal

execute if entity @s[advancements={expension:detection/inferno_whip_attack_with_fire_aspect_lv1=false,expension:detection/inferno_whip_attack_with_fire_aspect_lv2=false}] positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 5 player_attack by @p[advancements={expension:detection/inferno_whip_attack=true}]
execute if entity @s[advancements={expension:detection/inferno_whip_attack_with_fire_aspect_lv1=true}] positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 7.5 player_attack by @p[advancements={expension:detection/inferno_whip_attack=true}]
execute if entity @s[advancements={expension:detection/inferno_whip_attack_with_fire_aspect_lv2=true}] positioned ^ ^ ^2 as @e[type=#expension:mobs,distance=..2] run damage @s 10 player_attack by @p[advancements={expension:detection/inferno_whip_attack=true}]

advancement revoke @s only expension:detection/inferno_whip_attack
advancement revoke @s only expension:detection/inferno_whip_attack_with_fire_aspect_lv1
advancement revoke @s only expension:detection/inferno_whip_attack_with_fire_aspect_lv2