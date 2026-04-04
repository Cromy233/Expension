tag @n[tag=expension_impulse_crossbow_conductor] add expension_impulse_crossbow_conductor_selected
execute anchored eyes run summon marker ^ ^-0.5 ^1.5 {Tags:["expension_impulse_crossbow_connector"]}
execute as @n[tag=expension_impulse_crossbow_connector] at @s run tp @s ~ ~ ~ facing entity @n[tag=expension_impulse_crossbow_conductor_selected]