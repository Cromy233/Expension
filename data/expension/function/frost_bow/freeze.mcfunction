scoreboard players set @s expension_frost_bow_arrow 0
particle snowflake ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute positioned ~ ~-0.5 ~ as @e[distance=..2.5,type=#expension:mobs] run damage @s 2 freeze
execute positioned ~ ~-0.5 ~ run scoreboard players set @e[distance=..1.5,type=#expension:mobs] expension_frost_bow_frosted 30