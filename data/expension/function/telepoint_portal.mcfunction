execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run tp ~ ~-1 ~
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run forceload remove ~ ~ ~ ~

execute if entity @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run playsound minecraft:entity.player.teleport player @a ~ ~ ~
execute if entity @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.5 50
execute if entity @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 2 50

execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run playsound minecraft:block.beacon.activate player @a ~ ~-1 ~
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run particle minecraft:enchant ~ ~ ~ 0.7 0.7 0.7 0.5 50
execute at @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run particle minecraft:witch ~ ~ ~ 0.7 0.7 0.7 1 50 normal

execute unless entity @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000] run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~

kill @e[type=minecraft:item_display,tag=portal,limit=1,sort=nearest,distance=..100000]
advancement revoke @s only expension:check/recall_potion_use