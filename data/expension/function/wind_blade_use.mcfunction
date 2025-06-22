execute as @e[distance=0.0000000001..3,type=#expension:mobs] run damage @s 2.5 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
particle sweep_attack ~ ~ ~ 1 1 1 1 5 normal
playsound entity.breeze.slide player @a ~ ~ ~

advancement revoke @s only expension:detection/wind_blade_use