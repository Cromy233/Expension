$summon minecraft:item_display ~ ~1 ~ {item:{"id":"ender_eye"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],translation:[0f,0f,0f]},Tags:["expension_portal"],data:{Owner:$(Owner)}}
summon armor_stand ~ ~1 ~ {Tags:["expension_portal_locater"],Invisible:true,Invulnerable:true,NoGravity:true,attributes:[{id:"scale",base:0},{id:"minecraft:waypoint_transmit_range",base:2147483647}]}
execute positioned ~ ~1 ~ run waypoint modify @n[tag=expension_portal_locater] style set expension:portal
forceload add ~ ~ ~ ~

playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~
particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.5 50
particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 2 50