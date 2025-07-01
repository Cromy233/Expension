effect give @e[type=#expension:mobs,nbt=!{HurtTime:0s},distance=..3] minecraft:slowness 1 2 true
effect give @e[type=#expension:mobs,nbt=!{HurtTime:0s},distance=..3] minecraft:weakness 3 0 true
execute at @e[type=#expension:mobs,nbt=!{HurtTime:0s},distance=..3] run particle minecraft:block{block_state:"minecraft:cobblestone"} ~ ~ ~ 0.5 0 0.5 0 20
effect give @e[type=#expension:mobs,nbt={OnGround:1b},distance=..3] minecraft:slowness 2 0 true
effect give @e[type=#expension:mobs,nbt={OnGround:1b},distance=..3] minecraft:weakness 1 0 true
execute at @e[type=#expension:mobs,nbt={OnGround:1b},distance=..3] run particle minecraft:block{block_state:"minecraft:cobblestone"} ~ ~ ~ 0.5 0 0.5 0 10

advancement revoke @s only expension:detection/terra_greataxe_attack