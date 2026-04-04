#summon marker ~ ~ ~ {Tags:["test_findway"]}
#execute as @e[tag=test_findway] at @s run function expension:fun/test_findway
execute unless entity @e[tag=expension_impulse_crossbow_marker] run kill
kill @e[tag=expension_impulse_crossbow_marker,distance=..1]
execute facing entity @n[tag=expension_impulse_crossbow_marker] feet positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["test_findway"]}
particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=#expension:mobs,distance=..2.5] run damage @s 10 lightning_bolt
kill