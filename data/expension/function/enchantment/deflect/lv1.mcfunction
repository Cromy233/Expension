### 生成标记
summon marker ^ ^ ^1 {Tags:["deflect_marker"]}

### 计算Motion
execute as @n[tag=deflect_marker] store result score $marker_x expension_deflect run data get entity @s Pos[0] 10000
execute as @n[tag=deflect_marker] store result score $marker_y expension_deflect run data get entity @s Pos[1] 10000
execute as @n[tag=deflect_marker] store result score $marker_z expension_deflect run data get entity @s Pos[2] 10000

execute at @n[tag=deflect_marker] as @p[advancements={expension:enchantment/deflect/lv1=true}] store result score $player_x expension_deflect run data get entity @s Pos[0] 10000
execute at @n[tag=deflect_marker] as @p[advancements={expension:enchantment/deflect/lv1=true}] store result score $player_y expension_deflect run data get entity @s Pos[1] 10000
execute at @n[tag=deflect_marker] as @p[advancements={expension:enchantment/deflect/lv1=true}] store result score $player_z expension_deflect run data get entity @s Pos[2] 10000

scoreboard players operation $arrow_x expension_deflect = $marker_x expension_deflect
scoreboard players operation $arrow_y expension_deflect = $marker_y expension_deflect
scoreboard players operation $arrow_z expension_deflect = $marker_z expension_deflect

scoreboard players operation $arrow_x expension_deflect -= $player_x expension_deflect
scoreboard players operation $arrow_y expension_deflect -= $player_y expension_deflect
scoreboard players operation $arrow_z expension_deflect -= $player_z expension_deflect

### 生成弹射物、标记最初弹射物
tag @n[nbt=!{inGround:1b},nbt={LeftOwner:1b},type=#minecraft:arrows] add original_proj
execute positioned ~ ~-0.5 ~ anchored eyes run summon arrow ^ ^ ^0.1 {Tags:["deflected_proj"]}

### 克隆NBT
execute as @e[tag=deflected_proj] run data modify entity @s weapon set from entity @n[tag=original_proj] weapon
execute as @e[tag=deflected_proj] run data modify entity @s Owner set from entity @n[tag=original_proj] Owner
execute as @e[tag=deflected_proj] run data modify entity @s Fire set from entity @n[tag=original_proj] Fire
execute as @e[tag=deflected_proj] run data modify entity @s crit set from entity @n[tag=original_proj] crit

### 给予Motion
execute as @e[tag=deflected_proj] store result entity @s Motion[0] double 0.0001 run scoreboard players get $arrow_x expension_deflect
execute as @e[tag=deflected_proj] store result entity @s Motion[1] double 0.0001 run scoreboard players get $arrow_y expension_deflect
execute as @e[tag=deflected_proj] store result entity @s Motion[2] double 0.0001 run scoreboard players get $arrow_z expension_deflect

### 收尾
kill @e[type=marker,tag=deflect_marker]
kill @e[tag=original_proj]
tag @e[tag=deflected_proj] remove deflected_proj
advancement revoke @s only expension:enchantment/deflect/lv1