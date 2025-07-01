execute as @a[tag=tsunami_bow_use] at @s if block ~ ~0.5 ~ water anchored eyes positioned ^ ^ ^ if entity @e[type=#minecraft:arrows,distance=..3.5,nbt=!{inGround:1b},nbt=!{NoGravity:1b}] run say 1
execute as @a[tag=tsunami_bow_use] at @s if block ~ ~0.5 ~ water anchored eyes positioned ^ ^ ^ if entity @e[type=#minecraft:arrows,distance=..3.5,nbt=!{inGround:1b},nbt=!{NoGravity:1b}] run data merge entity @e[type=#minecraft:arrows,distance=..3.5,nbt=!{inGround:1b},nbt=!{NoGravity:1b},limit=1,sort=nearest] {NoGravity:1b}

schedule function expension:tsunami_bow_clear 5s replace
tag @a[tag=tsunami_bow_use] remove tsunami_bow_use