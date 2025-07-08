execute if entity @n[tag=frost_bow_marker,nbt=!{Fire:1s},distance=..8] run damage @s[type=!player] 3 freeze
execute if entity @n[tag=frost_bow_marker,nbt={Fire:1s},distance=..8] run damage @s[type=!player] 6 on_fire
data modify entity @s[type=!player] Fire set value 0

#scoreboard players reset @n[tag=frost_bow_marker] expension_frost_bow_marker
kill @n[tag=frost_bow_marker]