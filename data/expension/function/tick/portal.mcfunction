execute as @e[type=minecraft:item_display,tag=expension_portal] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:item_display,tag=expension_portal] at @s run particle minecraft:witch ^ ^ ^-0.2 0.2 0.2 0.2 0 1 normal
execute as @e[type=minecraft:armor_stand,tag=expension_portal_locater] at @s unless entity @n[distance=..0.001,tag=expension_portal] run kill