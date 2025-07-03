# Portal
execute as @e[type=minecraft:item_display,tag=portal] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:item_display,tag=portal] at @s run particle minecraft:witch ^ ^ ^-0.2 0.2 0.2 0.2 0 1 normal

# Thunder Dagger
scoreboard players remove @a[scores={thunder_dagger_cooldown=1..}] thunder_dagger_cooldown 1
execute at @a[scores={thunder_dagger_cooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1
execute at @a[scores={thunder_dagger_cooldown=..0},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1

# Death
execute as @a[scores={death=1..}] at @s run function expension:death
scoreboard players remove @a[scores={death=1..}] death 1

# Tsunami Bow
execute at @e[tag=frost_bow_arrow] run particle snowflake ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=frost_bow_arrow,nbt={inGround:1b}] at @s run function expension:frost_bow_ice