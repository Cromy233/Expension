summon zombie ~ ~ ~ {Tags:["cloned_zombie"]}
execute as @e[type=zombie,tag=cloned_zombie] run data modify entity @s equipment set from entity @e[type=zombie,limit=1,sort=nearest,tag=test_clone_zombie] equipment
execute as @e[type=zombie,tag=cloned_zombie] run data modify entity @s Health set from entity @e[type=zombie,limit=1,sort=nearest,tag=test_clone_zombie] Health
execute as @e[type=zombie,tag=cloned_zombie] run data modify entity @s UUID set from entity @e[type=zombie,limit=1,sort=nearest,tag=test_clone_zombie] UUID
tag @e[type=zombie,tag=cloned_zombie] add test_clone_zombie
tag @e[type=zombie,tag=cloned_zombie] remove cloned_zombie