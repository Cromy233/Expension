execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run damage @s 1.5 freeze
execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run damage @s 3 on_fire
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~

execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run say 1
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run say 2


execute as @n[tag=frost_bow_arrow] on passengers run scoreboard players reset @s expension_frost_bow_marker
execute as @n[tag=frost_bow_arrow] on passengers run kill
data modify entity @n[tag=frost_bow_arrow] NoGravity set value 0b
tag @n[tag=frost_bow_arrow] add frost_bow_arrow_fallin
tag @n[tag=frost_bow_arrow] remove frost_bow_arrow

advancement revoke @s only expension:detection/frost_bow_blocked