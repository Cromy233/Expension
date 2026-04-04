execute if entity @n[tag=expension_frost_bow_legacy_marker_used,nbt=!{Fire:1s},distance=..8] run damage @s 1.5 freeze
execute if entity @n[tag=expension_frost_bow_legacy_marker_used,nbt=!{Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~
execute if entity @n[tag=expension_frost_bow_legacy_marker_used,nbt={Fire:1s},distance=..8] run damage @s 3 on_fire
execute if entity @n[tag=expension_frost_bow_legacy_marker_used,nbt={Fire:1s},distance=..8] run playsound minecraft:entity.player.hurt_on_fire player @a ~ ~ ~

data modify entity @n[tag=expension_frost_bow_legacy_arrow] NoGravity set value 0b
tag @n[tag=expension_frost_bow_legacy_arrow] add expension_frost_bow_legacy_arrow_fallin

advancement revoke @s only expension:check/frost_bow_legacy/blocked