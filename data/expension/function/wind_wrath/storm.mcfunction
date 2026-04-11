#execute if data entity @s {data:{sweeping_edge:0}} run particle minecraft:sweep_attack ~ ~ ~ 0.8 0.8 0.8 0 3 normal
#execute if data entity @s {data:{sweeping_edge:1}} run particle minecraft:sweep_attack ~ ~ ~ 1.1 1.1 1.1 0 3 normal
#execute if data entity @s {data:{sweeping_edge:2}} run particle minecraft:sweep_attack ~ ~ ~ 1.2 1.2 1.2 0 3 normal
#execute if data entity @s {data:{sweeping_edge:3}} run particle minecraft:sweep_attack ~ ~ ~ 1.3 1.3 1.3 0 3 normal
particle minecraft:sweep_attack ~ ~ ~ 1.3 1.3 1.3 0 3 normal

particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.5 6 normal
playsound entity.breeze.idle_ground player @a ~ ~ ~

execute if data entity @s {data:{sweeping_edge:0}} as @n[type=#expension:mobs,distance=..3] run damage @s 5.5 player_attack by @n[tag=expension_wind_wrath_storm]
execute if data entity @s {data:{sweeping_edge:1}} as @n[type=#expension:mobs,distance=..3] run damage @s 6 player_attack by @n[tag=expension_wind_wrath_storm]
execute if data entity @s {data:{sweeping_edge:2}} as @n[type=#expension:mobs,distance=..3] run damage @s 6.5 player_attack by @n[tag=expension_wind_wrath_storm]
execute if data entity @s {data:{sweeping_edge:3}} as @n[type=#expension:mobs,distance=..3] run damage @s 7 player_attack by @n[tag=expension_wind_wrath_storm]

execute if data entity @s {data:{fire_aspect:1}} as @n[type=#expension:mobs,distance=..3,nbt={HurtTime:10s}] run data modify entity @s Fire set value 40
execute if data entity @s {data:{fire_aspect:2}} as @n[type=#expension:mobs,distance=..3,nbt={HurtTime:10s}] run data modify entity @s Fire set value 80