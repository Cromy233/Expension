scoreboard players set @s expension_thruster 11
execute if predicate expension:holding/thruster_doubled if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand expension:set_count/count-2
execute if predicate expension:holding/thruster_doubled if entity @s[gamemode=!creative] run item modify entity @s weapon.offhand expension:set_count/count-2

particle minecraft:gust_emitter_small ^ ^ ^-0.5
playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1

advancement revoke @s only expension:check/thruster_use