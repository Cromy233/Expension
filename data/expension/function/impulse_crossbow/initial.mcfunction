# Run every shot
$execute if entity @e[distance=..24,tag=expension_impulse_crossbow_conductor,nbt={data:{Owner:$(UUID)}}] at @s run function expension:impulse_crossbow/conductor_initial
execute if predicate expension:holding/impulse_crossbow/multishot_lv2 run title @a title "别用一级以上多重射击有bug"

summon marker ~ ~ ~ {Tags:["expension_impulse_crossbow_marker"]}
#data modify entity @n[tag=expension_impulse_crossbow_marker] data set from entity @s
$data merge entity @n[tag=expension_impulse_crossbow_marker] {data:{Owner:$(UUID)}}
ride @n[tag=expension_impulse_crossbow_marker] mount @n[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow]
tag @n[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow] add expension_impulse_crossbow_arrow