damage @s[type=!player] 3 freeze
data modify entity @s[type=!player] Fire set value 0

scoreboard players reset @n[tag=frost_bow_marker] expension_frost_bow_marker
kill @n[tag=frost_bow_marker]