scoreboard objectives add test_arrow dummy

summon arrow ^ ^ ^1 {Tags:["test_arrow"]}
# 可以改成Marker

execute as @e[tag=test_arrow] store result score $arrow_x test_arrow run data get entity @s Pos[0] 10000
execute as @e[tag=test_arrow] store result score $arrow_y test_arrow run data get entity @s Pos[1] 10000
execute as @e[tag=test_arrow] store result score $arrow_z test_arrow run data get entity @s Pos[2] 10000

execute as @e[tag=test_arrow] store result score $motion_x test_arrow run data get entity @s Pos[0] 10000
execute as @e[tag=test_arrow] store result score $motion_y test_arrow run data get entity @s Pos[1] 10000
execute as @e[tag=test_arrow] store result score $motion_z test_arrow run data get entity @s Pos[2] 10000

execute at @e[tag=test_arrow] as @p store result score $player_x test_arrow run data get entity @s Pos[0] 10000
execute at @e[tag=test_arrow] as @p store result score $player_y test_arrow run data get entity @s Pos[1] 10000
execute at @e[tag=test_arrow] as @p store result score $player_z test_arrow run data get entity @s Pos[2] 10000

scoreboard players operation $motion_x test_arrow -= $player_x test_arrow
scoreboard players operation $motion_y test_arrow -= $player_y test_arrow
scoreboard players operation $motion_z test_arrow -= $player_z test_arrow

tp @e[tag=test_arrow] ~ ~1.5 ~

execute as @e[tag=test_arrow] store result entity @s Motion[0] double 0.0001 run scoreboard players get $motion_x test_arrow
execute as @e[tag=test_arrow] store result entity @s Motion[1] double 0.0001 run scoreboard players get $motion_y test_arrow
execute as @e[tag=test_arrow] store result entity @s Motion[2] double 0.0001 run scoreboard players get $motion_z test_arrow

tag @e[tag=test_arrow] remove test_arrow