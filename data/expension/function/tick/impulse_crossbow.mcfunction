### IMPULSE CROSSBOW TICK

### Arrow Initial
execute as @n[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow] on origin at @s run function expension:impulse_crossbow/initial with entity @s

### 在地上放电
execute as @e[tag=expension_impulse_crossbow_arrow,nbt={inGround:1b}] at @s run function expension:impulse_crossbow/tesla_initial
execute as @e[tag=expension_impulse_crossbow_marker,scores={expension_impulse_crossbow_marker=1..}] at @s run function expension:impulse_crossbow/tesla

### Marker to Conductor
tag @e[tag=expension_impulse_crossbow_marker] add expension_impulse_crossbow_conductor
execute as @e[tag=expension_impulse_crossbow_marker] on vehicle at @s run tag @n[tag=expension_impulse_crossbow_marker] remove expension_impulse_crossbow_conductor
execute as @e[tag=expension_impulse_crossbow_conductor] unless score @s expension_impulse_crossbow_marker matches -1.. run scoreboard players set @s expension_impulse_crossbow_marker 100

scoreboard players remove @e[scores={expension_impulse_crossbow_marker=-1..}] expension_impulse_crossbow_marker 1
kill @e[scores={expension_impulse_crossbow_marker=..0}]

### 射线
execute as @e[tag=expension_impulse_crossbow_connector] at @s run function expension:impulse_crossbow/connect
execute as @e[tag=expension_impulse_crossbow_circuit,scores={expension_impulse_crossbow_marker=1..}] at @s run function expension:impulse_crossbow/circuit