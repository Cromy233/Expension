$execute at @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run tp ~ ~-1 ~
$execute at @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run forceload remove ~ ~ ~ ~

$execute if entity @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run playsound minecraft:entity.player.teleport player @a ~ ~ ~
$execute if entity @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.5 50
$execute if entity @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 2 50

$execute at @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run playsound minecraft:block.beacon.activate player @a ~ ~-1 ~
$execute at @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run particle minecraft:enchant ~ ~ ~ 0.7 0.7 0.7 0.5 50
$execute at @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run particle minecraft:witch ~ ~ ~ 0.7 0.7 0.7 1 50 normal

$execute unless entity @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}] run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~

$kill @n[tag=expension_portal,nbt={data:{Owner:$(Owner)}}]