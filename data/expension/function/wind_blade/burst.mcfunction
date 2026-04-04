### 声音及粒子效果
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~1 ~ 0 0 0 0.5 100 normal
particle sweep_attack ~ ~1 ~ 1.3 1.3 1.3 0 10 normal

### 用临时标签排除宠物
execute as @e[type=#expension:mobs,distance=..4] if data entity @s Owner run tag @s add expension_wind_blade_excluded

### 伤害怪物的粒子效果
execute at @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=3,distance=..4,sort=nearest] run particle minecraft:gust ~ ~0.5 ~ 1 0 1 0.1 1 normal
execute at @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~0.75 ~ 0.2 0.5 0.2 0 1 normal
execute at @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~1.25 ~ 0.2 0.5 0.2 0 1 normal
execute at @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=3,distance=..4,sort=nearest] run particle sweep_attack ~ ~1.75 ~ 0.2 0.5 0.2 0 1 normal

### 伤害 效果
execute unless predicate expension:holding/wind_blade/sweeping_edge_lv1 unless predicate expension:holding/wind_blade/sweeping_edge_lv2 unless predicate expension:holding/wind_blade/sweeping_edge_lv3 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=5,distance=..4,sort=nearest] run damage @s 5 player_attack by @n[advancements={expension:check/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv1 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=6,distance=..4,sort=nearest] run damage @s 6 player_attack by @n[advancements={expension:check/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv2 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=7,distance=..4,sort=nearest] run damage @s 7 player_attack by @n[advancements={expension:check/wind_blade_use=true}]
execute if predicate expension:holding/wind_blade/sweeping_edge_lv3 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,limit=8,distance=..4,sort=nearest] run damage @s 8 player_attack by @n[advancements={expension:check/wind_blade_use=true}]

execute if predicate expension:holding/wind_blade/fire_aspect_lv1 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,distance=..4,nbt={HurtTime:10s}] run data modify entity @s Fire set value 40
execute if predicate expension:holding/wind_blade/fire_aspect_lv2 as @e[type=#expension:mobs,tag=!expension_wind_blade_excluded,distance=..4,nbt={HurtTime:10s}] run data modify entity @s Fire set value 80

execute as @e[type=#arrows,distance=..4,limit=5,sort=nearest,nbt=!{inGround:1b}] at @s run data modify entity @s Motion set value [0,0,0]

### 移除临时标签
tag @e[tag=expension_wind_blade_excluded] remove expension_wind_blade_excluded

### 设置CD
scoreboard players set @s expension_wind_blade_cooldown 20

### 消耗耐久
execute if predicate expension:holding/wind_blade/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand expension:set_damage/damage0.001
execute if predicate expension:holding/wind_blade/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand expension:set_damage/damage0.001