execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run damage @s 1.5 freeze
execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run damage @s 3 on_fire
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~

data modify entity @n[tag=frost_bow_arrow] NoGravity set value 0b
tag @n[tag=frost_bow_arrow] add frost_bow_arrow_fallin

advancement revoke @s only expension:check/frost_bow/blocked