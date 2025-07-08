particle minecraft:poof ~ ~ ~ 0 0 0 0.5 100 normal
summon minecraft:wind_charge ~ ~ ~ {Motion:[0,-1,0]}

execute if predicate expension:holding/wind_blade/mainhand run item modify entity @s weapon.mainhand expension:set_damage/damage0.005
execute if predicate expension:holding/wind_blade/offhand run item modify entity @s weapon.offhand expension:set_damage/damage0.005
scoreboard players set @s expension_wind_blade_cooldown 100