summon minecraft:item_display ~ ~1 ~ {item:{"id":"ender_eye"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f]},Tags:["portal"]}
forceload add ~ ~ ~ ~

playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~
particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.5 50
particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 2 50

advancement revoke @s only expension:detection/portal_potion_use