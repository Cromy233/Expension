#create circuit
tp @s ^ ^ ^1
summon marker ~ ~ ~ {Tags:["expension_impulse_crossbow_circuit"]}
scoreboard players set @n[tag=expension_impulse_crossbow_circuit] expension_impulse_crossbow_marker 100

execute if entity @e[tag=expension_impulse_crossbow_conductor_selected,distance=..1] run function expension:impulse_crossbow/connect_end