scoreboard players set @s expension_thruster_effect 11
scoreboard players set @s expension_thruster_cooldown 10
execute if predicate expension:holding/thruster/mainhand if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand expension:set_damage/damage0.2
execute if predicate expension:holding/thruster/offhand if entity @s[gamemode=!creative] run item modify entity @s weapon.offhand expension:set_damage/damage0.2

particle minecraft:gust_emitter_small ^ ^ ^-0.5
playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1