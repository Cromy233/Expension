playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~ ~ 0 0 0 0.8 150 normal

execute at @e[type=#expension:mobs,limit=3,distance=..4,sort=nearest] run particle minecraft:gust ~ ~ ~ 1 0.5 1 0.1 1 normal
execute at @e[type=#expension:mobs,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~0.75 ~ 0.2 0.5 0.2 0 1 normal
execute at @e[type=#expension:mobs,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~1.25 ~ 0.2 0.5 0.2 0 1 normal
execute at @e[type=#expension:mobs,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~1.75 ~ 0.2 0.5 0.2 0 1 normal

execute unless predicate expension:holding/wind_blade/sweeping_edge_lv1 unless predicate expension:holding/wind_blade/sweeping_edge_lv2 unless predicate expension:holding/wind_blade/sweeping_edge_lv3 as @e[type=#expension:mobs,limit=3,distance=..4,sort=nearest] run damage @s 5 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv1 as @e[type=#expension:mobs,limit=4,distance=..4,sort=nearest] run damage @s 6 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv2 as @e[type=#expension:mobs,limit=5,distance=..4,sort=nearest] run damage @s 7 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv3 as @e[type=#expension:mobs,limit=6,distance=..4,sort=nearest] run damage @s 8 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]

execute if predicate expension:holding/wind_blade/fire_aspect_lv1 as @e[type=#expension:mobs,distance=..4,nbt={HurtTime:10s}] run data modify entity @s Fire set value 40
execute if predicate expension:holding/wind_blade/fire_aspect_lv2 as @e[type=#expension:mobs,distance=..4,nbt={HurtTime:10s}] run data modify entity @s Fire set value 80

execute if predicate expension:holding/wind_blade/mainhand run item modify entity @s weapon.mainhand expension:set_damage/damage0.002
execute if predicate expension:holding/wind_blade/offhand run item modify entity @s weapon.offhand expension:set_damage/damage0.002
scoreboard players set @s expension_wind_blade_cooldown 20