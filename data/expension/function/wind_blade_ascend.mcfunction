particle minecraft:poof ~ ~ ~ 0 0 0 0.5 100 normal
summon minecraft:wind_charge ~ ~ ~ {Motion:[0,-1,0]}

scoreboard players set @s expension_wind_blade_cooldown 60

execute if predicate expension:holding/wind_blade/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand expension:set_damage/damage0.001
execute if predicate expension:holding/wind_blade/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand expension:set_damage/damage0.001