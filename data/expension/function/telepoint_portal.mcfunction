execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run tp ~ ~-1 ~
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run forceload remove ~ ~ ~ ~

execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run playsound minecraft:block.beacon.activate player @a ~ ~-1 ~
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run particle minecraft:enchant ~ ~ ~ 0.7 0.7 0.7 0.5 50
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run particle minecraft:witch ~ ~ ~ 0.7 0.7 0.7 1 50 normal
execute unless entity @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~

kill @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest]

advancement revoke @s only expension:detection/recall_potion_use