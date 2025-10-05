execute at @e[type=item,distance=..5,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"id":"expension:terra_greataxe"}}}}] run function expension:terra_greataxe_death

# 每次提交时这个需要删掉
# execute if score $count AliveFighterCount matches 1.. as @s[team=fighter] run function duel:other/viewer