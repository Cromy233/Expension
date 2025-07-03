execute if entity @s[advancements={expension:detection/wind_blade_use_with_sweeping_edge_lv1=false,expension:detection/wind_blade_use_with_sweeping_edge_lv2=false,expension:detection/wind_blade_use_with_sweeping_edge_lv3=false}] as @e[distance=0.0000000001..3,type=#expension:mobs] run damage @s 2 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if entity @s[advancements={expension:detection/wind_blade_use_with_sweeping_edge_lv1=true}] as @e[distance=0.0000000001..3,type=#expension:mobs] run damage @s 2.5 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if entity @s[advancements={expension:detection/wind_blade_use_with_sweeping_edge_lv2=true}] as @e[distance=0.0000000001..3,type=#expension:mobs] run damage @s 3 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]
execute if entity @s[advancements={expension:detection/wind_blade_use_with_sweeping_edge_lv3=true}] as @e[distance=0.0000000001..3,type=#expension:mobs] run damage @s 4 player_attack by @p[advancements={expension:detection/wind_blade_use=true}]

particle sweep_attack ~ ~1 ~ 1 1 1 1 5 normal
playsound entity.breeze.slide player @a ~ ~ ~

attribute @s minecraft:gravity modifier add expension:wind_blade -0.5 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add expension:wind_blade 0.6 add_value
schedule function expension:wind_blade_clear 2t replace

advancement revoke @s only expension:detection/wind_blade_use
advancement revoke @s only expension:detection/wind_blade_use_with_sweeping_edge_lv1
advancement revoke @s only expension:detection/wind_blade_use_with_sweeping_edge_lv2
advancement revoke @s only expension:detection/wind_blade_use_with_sweeping_edge_lv3