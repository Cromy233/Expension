# Lava Fishing (Comming Soon!)
#scoreboard players remove @e[tag=lava_fishing] expension_lava_fishing 1

#execute as @e[type=fishing_bobber,tag=!lava_proof] at @s if block ~ ~ ~ lava[level=0] on origin if predicate expension:holding/fishing_rod/lava_proof run tag @s add lava_proof
#execute as @e[type=fishing_bobber,tag=lava_proof,tag=!lava_fishing] run function expension:lava_fishing/start