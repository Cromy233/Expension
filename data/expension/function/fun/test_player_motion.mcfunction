scoreboard objectives add test_player_motion dummy
scoreboard objectives add test_player_motion_list dummy

summon marker ^ ^ ^1 {Tags:["test_player_motion"]}
# 可以改成Marker

execute as @e[tag=test_player_motion] store result score $arrow_x test_player_motion run data get entity @s Pos[0] 10000
execute as @e[tag=test_player_motion] store result score $arrow_y test_player_motion run data get entity @s Pos[1] 10000
execute as @e[tag=test_player_motion] store result score $arrow_z test_player_motion run data get entity @s Pos[2] 10000

execute as @e[tag=test_player_motion] store result score $motion_x test_player_motion run data get entity @s Pos[0] 10000
execute as @e[tag=test_player_motion] store result score $motion_y test_player_motion run data get entity @s Pos[1] 10000
execute as @e[tag=test_player_motion] store result score $motion_z test_player_motion run data get entity @s Pos[2] 10000

execute at @e[tag=test_player_motion] as @p store result score $player_x test_player_motion run data get entity @s Pos[0] 10000
execute at @e[tag=test_player_motion] as @p store result score $player_y test_player_motion run data get entity @s Pos[1] 10000
execute at @e[tag=test_player_motion] as @p store result score $player_z test_player_motion run data get entity @s Pos[2] 10000

scoreboard players operation $motion_x test_player_motion -= $player_x test_player_motion
scoreboard players operation $motion_y test_player_motion -= $player_y test_player_motion
scoreboard players operation $motion_z test_player_motion -= $player_z test_player_motion

kill @e[tag=test_player_motion]
summon wind_charge ~ ~0.2 ~ {Tags:["test_player_motion_driver"],acceleration_power:-0.05d}
ride @s mount @n[tag=test_player_motion_driver]
scoreboard players set @n[tag=!test_player_motion_driver_recorded,tag=test_player_motion_driver] test_player_motion_list 20
tag @e[tag=test_player_motion_driver] add test_player_motion_driver_recorded

execute as @e[tag=test_player_motion_driver] store result entity @s Motion[0] double 0.0002 run scoreboard players get $motion_x test_player_motion
execute as @e[tag=test_player_motion_driver] store result entity @s Motion[1] double 0.0002 run scoreboard players get $motion_y test_player_motion
execute as @e[tag=test_player_motion_driver] store result entity @s Motion[2] double 0.0002 run scoreboard players get $motion_z test_player_motion
