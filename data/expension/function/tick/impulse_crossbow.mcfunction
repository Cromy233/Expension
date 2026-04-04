### IMPULSE CROSSBOW TICK

### Arrow Initial
execute as @e[nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:impulse_crossbow"}}}},tag=!expension_impulse_crossbow_arrow] on origin at @s run function expension:impulse_crossbow/initial with entity @s

### Marker to Conductor
tag @e[tag=expension_impulse_crossbow_marker] add expension_impulse_crossbow_conductor
execute as @e[tag=expension_impulse_crossbow_marker] on vehicle at @s run tag @n[tag=expension_impulse_crossbow_marker] remove expension_impulse_crossbow_conductor
execute at @e[tag=expension_impulse_crossbow_conductor] run particle minecraft:entity_effect{color:[0.85,0.75,0.26,1]} ~ ~ ~ 0.2 0.2 0.2 0 1 normal

### 在地上放电
execute as @e[tag=expension_impulse_crossbow_arrow,nbt={inGround:1b}] at @s run function expension:impulse_crossbow/tesla_initial
execute as @e[tag=expension_impulse_crossbow_marker,scores={expension_impulse_crossbow_marker=1..}] at @s run function expension:impulse_crossbow/tesla

### 射线
execute as @e[tag=expension_impulse_crossbow_connector] at @s run function expension:impulse_crossbow/connect
execute as @e[tag=expension_impulse_crossbow_circuit,scores={expension_impulse_crossbow_marker=1..}] at @s run function expension:impulse_crossbow/circuit