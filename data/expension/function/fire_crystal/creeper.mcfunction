execute rotated ~24 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~48 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~72 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~96 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~120 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~144 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~168 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~192 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~216 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~240 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~264 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~288 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~312 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
execute rotated ~336 0 run particle flame ~ ~0.2 ~ ^ ^ ^10000000000000 0.00000000000002 0
particle flame ~ ~1 ~ 0.2 0.2 0.2 0.05 10

playsound block.amethyst_block.break player @a ~ ~ ~ 1 1
playsound block.spawner.break player @a ~ ~ ~ 1 1

execute as @e[type=minecraft:creeper,distance=..50] run data modify entity @s Fire set value 2000
execute as @e[type=minecraft:creeper,distance=..50] run attribute @s max_health modifier add expension:fire_crystal -0.5 add_multiplied_total

advancement revoke @s only expension:check/fire_crystal/creeper