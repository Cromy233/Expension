### 生成弹射物、标记最初弹射物
tag @n[nbt=!{inGround:1b},nbt={LeftOwner:1b},type=#minecraft:arrows] add expension_original_proj
execute positioned ~ ~-0.1 ~ anchored eyes run summon arrow ^ ^ ^0.1 {Tags:["expension_deflected_proj"]}

### 克隆NBT
execute as @e[tag=expension_deflected_proj] run data modify entity @s weapon set from entity @n[tag=expension_original_proj] weapon
execute as @e[tag=expension_deflected_proj] run data modify entity @s Owner set from entity @n[tag=expension_original_proj] Owner
execute as @e[tag=expension_deflected_proj] run data modify entity @s Fire set from entity @n[tag=expension_original_proj] Fire
execute as @e[tag=expension_deflected_proj] run data modify entity @s crit set from entity @n[tag=expension_original_proj] crit

### 给予Motion
function expension:vector
execute store result entity @n[tag=expension_deflected_proj] Motion[0] double 0.00016 run scoreboard players get @s expension_vector_x
execute store result entity @n[tag=expension_deflected_proj] Motion[1] double 0.00016 run scoreboard players get @s expension_vector_y
execute store result entity @n[tag=expension_deflected_proj] Motion[2] double 0.00016 run scoreboard players get @s expension_vector_z

### 收尾
kill @e[tag=expension_original_proj]
tag @e[tag=expension_deflected_proj] remove expension_deflected_proj
advancement revoke @s only expension:enchantment/deflect/lv3