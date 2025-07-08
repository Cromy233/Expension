execute on vehicle if entity @e on passengers run scoreboard players set @s expension_frost_bow_marker 2
scoreboard players remove @s expension_frost_bow_marker 1

execute on vehicle if entity @s[tag=frost_bow_arrow,nbt={inGround:1b}] run function expension:frost_bow_ice
execute if score @s expension_frost_bow_marker matches ..0 as @n[nbt={HurtTime:10s},type=!player,distance=..8] run function expension:frost_bow_hit
execute if score @s expension_frost_bow_marker matches ..0 as @n[nbt={HurtTime:9s},type=player,distance=..8] run function expension:frost_bow_hit
# 同帧受击时 会出现一箭打二的bug
# 但是相比只写一行（同帧受击时 会出现二箭打一的bug） 只能这样吧