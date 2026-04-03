### 生成标记
summon marker ^ ^ ^1 {Tags:["expension_vector_marker"]}

### 计算Motion
execute store result score @s expension_vector_marker_x run data get entity @n[tag=expension_vector_marker] Pos[0] 10000
execute store result score @s expension_vector_marker_y run data get entity @n[tag=expension_vector_marker] Pos[1] 10000
execute store result score @s expension_vector_marker_z run data get entity @n[tag=expension_vector_marker] Pos[2] 10000

execute store result score @s expension_vector_player_x run data get entity @s Pos[0] 10000
execute store result score @s expension_vector_player_y run data get entity @s Pos[1] 10000
execute store result score @s expension_vector_player_z run data get entity @s Pos[2] 10000

scoreboard players operation @s expension_vector_x = @s expension_vector_marker_x
scoreboard players operation @s expension_vector_y = @s expension_vector_marker_y
scoreboard players operation @s expension_vector_z = @s expension_vector_marker_z

scoreboard players operation @s expension_vector_x -= @s expension_vector_player_x
scoreboard players operation @s expension_vector_y -= @s expension_vector_player_y
scoreboard players operation @s expension_vector_z -= @s expension_vector_player_z

### 清除标记
kill @n[tag=expension_vector_marker]