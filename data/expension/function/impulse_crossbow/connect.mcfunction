#create circuit
execute unless entity @e[tag=expension_impulse_crossbow_conductor_selected,distance=..24] run kill
tp @s ^ ^ ^2
summon marker ~ ~ ~ {Tags:["expension_impulse_crossbow_circuit"]}
execute as @n[tag=expension_impulse_crossbow_circuit] at @s run tp @s ~ ~ ~ facing entity @n[tag=expension_impulse_crossbow_connector]
scoreboard players set @n[tag=expension_impulse_crossbow_circuit] expension_impulse_crossbow_marker 100

execute if entity @e[tag=expension_impulse_crossbow_conductor_selected,distance=..1] run function expension:impulse_crossbow/connect_end