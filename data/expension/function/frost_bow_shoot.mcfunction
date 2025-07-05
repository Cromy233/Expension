execute at @a[tag=frost_bow_use] anchored eyes positioned ^ ^ ^ run tag @e[type=#minecraft:arrows,nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:frost_bow"}}}},nbt=!{inGround:1b},tag=!frost_bow_arrow,limit=1,sort=nearest] add frost_bow_arrow
execute as @e[tag=frost_bow_arrow,nbt=!{NoGravity:1b}] run data merge entity @s {NoGravity:1b,Fire:0s}
execute as @a[tag=frost_bow_use] run attribute @s minecraft:burning_time modifier remove expension:frost_bow

schedule function expension:frost_bow_clear 5s replace
tag @a[tag=frost_bow_use] remove frost_bow_use