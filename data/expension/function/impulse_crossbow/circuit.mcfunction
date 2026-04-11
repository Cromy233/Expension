# circuit run evert tick
execute positioned ~ ~-1 ~ as @e[type=#expension:include_player,distance=..1] run damage @s 3 player_attack at ~ ~ ~ 
execute if predicate expension:random/0.2chance run particle electric_spark ^ ^ ^1 0.1 0.1 0.1 0 1 normal
execute if predicate expension:random/0.2chance run particle electric_spark ^ ^ ^0.5 0.1 0.1 0.1 0 1 normal
execute if predicate expension:random/0.2chance run particle electric_spark ^ ^ ^ 0.1 0.1 0.1 0 1 normal
execute if predicate expension:random/0.2chance run particle electric_spark ^ ^ ^-0.5 0.1 0.1 0.1 0 1 normal
execute if predicate expension:random/0.2chance run particle electric_spark ^ ^ ^-1 0.1 0.1 0.1 0 1 normal
