# Y Speed
# execute as @a store result score @s expension_y_speed run data get entity @s Motion[1] 100

# Portal
execute as @e[type=minecraft:item_display,tag=portal] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:item_display,tag=portal] at @s run particle minecraft:witch ^ ^ ^-0.2 0.2 0.2 0.2 0 1 normal

# Thunder Dagger
scoreboard players remove @a[scores={expension_thunder_dagger_cooldown=1..}] expension_thunder_dagger_cooldown 1
execute at @a[scores={expension_thunder_dagger_cooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1
execute at @a[scores={expension_thunder_dagger_cooldown=..0},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1


# Frost Bow
execute as @e[type=#minecraft:arrows,nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:frost_bow"}}}},tag=!frost_bow_arrow_fallin,tag=!frost_bow_arrow] at @s run function expension:frost_bow/arrow
execute as @e[tag=frost_bow_marker] at @s run function expension:frost_bow/marker

execute at @e[tag=frost_bow_arrow,tag=!frost_bow_arrow_fallin] run particle snowflake ~ ~ ~ 0 0 0 0 1 normal

# Wind Blade
scoreboard players remove @a[scores={expension_wind_blade_cooldown=1..}] expension_wind_blade_cooldown 1

# Death ↓
execute as @a[scores={expension_death=1..}] at @s run function expension:death
scoreboard players remove @a[scores={expension_death=1..}] expension_death 1