execute if score @s expension_thunder_dagger_cooldown matches ..0 run tag @s add thunder_daggle_1
execute on attacker if entity @s run tag @a[tag=thunder_daggle_1] add thunder_daggle_2

execute if entity @s[tag=thunder_daggle_2] run particle minecraft:electric_spark ~ ~0.5 ~ 0.5 0.5 0.5 1 30
execute if entity @s[tag=thunder_daggle_2] on attacker at @s run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=thunder_daggle_2] run scoreboard players set @s expension_thunder_dagger_cooldown 300

tag @s remove thunder_daggle_1
tag @s remove thunder_daggle_2
advancement revoke @s only expension:check/thunder_dagger/use