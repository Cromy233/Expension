execute anchored eyes run particle minecraft:falling_water ^0.8 ^ ^1.8 0.1 1 0.1 0 1
execute anchored eyes run particle minecraft:falling_water ^1.5 ^ ^1 0.1 1 0.1 0 1
execute anchored eyes run particle minecraft:falling_water ^-0.8 ^ ^1.8 0.1 1 0.1 0 1
execute anchored eyes run particle minecraft:falling_water ^-1.5 ^ ^1 0.1 1 0.1 0 1

execute if block ~ ~0.5 ~ water run title @s actionbar "-+-"
schedule function expension:tsunami_bow_shoot 2t replace
tag @s add tsunami_bow_use

advancement revoke @s only expension:detection/tsunami_bow_use