### 生成弹射物、标记最初弹射物
tag @n[nbt=!{inGround:1b},nbt={LeftOwner:1b},type=#minecraft:arrows] add expension_deflect_original
execute positioned ~ ~-0.1 ~ anchored eyes run summon arrow ^ ^ ^0.1 {Tags:["expension_deflect_spawned"]}

### 克隆NBT
execute as @e[tag=expension_deflect_spawned] run data modify entity @s weapon set from entity @n[tag=expension_deflect_original] weapon
execute as @e[tag=expension_deflect_spawned] run data modify entity @s Owner set from entity @n[tag=expension_deflect_original] Owner
execute as @e[tag=expension_deflect_spawned] run data modify entity @s Fire set from entity @n[tag=expension_deflect_original] Fire
execute as @e[tag=expension_deflect_spawned] run data modify entity @s crit set from entity @n[tag=expension_deflect_original] crit

### 给予Motion
function expension:vector
execute store result entity @n[tag=expension_deflect_spawned] Motion[0] double 0.00013 run scoreboard players get @s expension_vector_x
execute store result entity @n[tag=expension_deflect_spawned] Motion[1] double 0.00013 run scoreboard players get @s expension_vector_y
execute store result entity @n[tag=expension_deflect_spawned] Motion[2] double 0.00013 run scoreboard players get @s expension_vector_z

### 收尾
kill @e[tag=expension_deflect_original]
tag @e[tag=expension_deflect_spawned] remove expension_deflect_spawned
advancement revoke @s only expension:enchantment/deflect/lv2