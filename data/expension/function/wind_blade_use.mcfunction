particle minecraft:small_gust ~ ~0.7 ~ 0.3 0.3 0.3 1 1
attribute @s gravity modifier add expension:wind_blade -0.5 add_multiplied_base
execute unless score @s expension_wind_blade_cooldown matches ..60 run scoreboard players set @s expension_wind_blade_cooldown 0

execute unless predicate expension:sneaking if score @s expension_wind_blade_cooldown matches 0 run function expension:wind_blade_burst
execute if predicate expension:sneaking if score @s[nbt={OnGround:1b}] expension_wind_blade_cooldown matches 0 unless block ~ ~-1 ~ #air run function expension:wind_blade_ascend

schedule function expension:wind_blade_clear 2t replace
advancement revoke @s only expension:detection/wind_blade_use