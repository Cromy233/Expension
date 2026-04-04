# Run every shot
$execute if entity @e[tag=expension_impulse_crossbow_conductor,tag=!expension_impulse_crossbow_conductor_selected,nbt={data:{UUID:$(UUID)}}] at @s run function expension:impulse_crossbow/conductor_initial

summon marker ~ ~ ~ {Tags:["expension_impulse_crossbow_marker"]}
data modify entity @n[tag=expension_impulse_crossbow_marker] data set from entity @s
ride @n[tag=expension_impulse_crossbow_marker] mount @n[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow]
tag @n[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow] add expension_impulse_crossbow_arrow