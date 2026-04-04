execute on vehicle if entity @s[tag=!expension_frost_bow_legacy_arrow_fallin] on passengers run scoreboard players set @s expension_frost_bow_legacy_marker 2
scoreboard players remove @s expension_frost_bow_legacy_marker 1

execute on vehicle if entity @s[tag=!expension_frost_bow_legacy_arrow_fallin,nbt={inGround:1b}] at @s run function expension:frost_bow_legacy/ice
execute if score @s expension_frost_bow_legacy_marker matches ..0 as @n[nbt={HurtTime:10s},type=!player,distance=..8] run function expension:frost_bow_legacy/hit
kill @s[scores={expension_frost_bow_legacy_marker=..0}]