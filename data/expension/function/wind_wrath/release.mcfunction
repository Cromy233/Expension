function expension:vector
execute anchored eyes run summon wind_charge ^ ^-0.2 ^ {acceleration_power:-0.1d,Tags:["expension_wind_wrath_storm"]}
execute store result entity @n[tag=expension_wind_wrath_storm] Motion[0] double 0.0002 run scoreboard players get @s expension_vector_x
execute store result entity @n[tag=expension_wind_wrath_storm] Motion[1] double 0.0002 run scoreboard players get @s expension_vector_y
execute store result entity @n[tag=expension_wind_wrath_storm] Motion[2] double 0.0002 run scoreboard players get @s expension_vector_z

execute if predicate expension:holding/wind_wrath/fire_aspect_lv1 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{fire_aspect:1}}
execute if predicate expension:holding/wind_wrath/fire_aspect_lv2 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{fire_aspect:2}}
execute unless predicate expension:holding/wind_wrath/sweeping_edge_lv1 unless predicate expension:holding/wind_wrath/sweeping_edge_lv2 unless predicate expension:holding/wind_wrath/sweeping_edge_lv3 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{sweeping_edge:0}}
execute if predicate expension:holding/wind_wrath/sweeping_edge_lv1 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{sweeping_edge:1}}
execute if predicate expension:holding/wind_wrath/sweeping_edge_lv2 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{sweeping_edge:2}}
execute if predicate expension:holding/wind_wrath/sweeping_edge_lv3 run data merge entity @n[tag=expension_wind_wrath_storm] {data:{sweeping_edge:3}}

scoreboard players set @n[tag=expension_wind_wrath_storm] expension_wind_wrath 15

scoreboard players set @s expension_wind_wrath 50
execute if predicate expension:holding/wind_wrath/mainhand run return run item modify entity @s[gamemode=!creative] weapon.mainhand expension:set_damage/damage0.0005
execute if predicate expension:holding/wind_wrath/offhand run return run item modify entity @s[gamemode=!creative] weapon.offhand expension:set_damage/damage0.0005