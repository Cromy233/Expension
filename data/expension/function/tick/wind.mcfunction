scoreboard players remove @a[scores={expension_wind_blade_cooldown=1..}] expension_wind_blade_cooldown 1
scoreboard players remove @e[scores={expension_wind_wrath=1..}] expension_wind_wrath 1

execute at @a[scores={expension_wind_wrath=10..}] run particle minecraft:small_gust ~ ~0.7 ~ 0.3 0.3 0.3 1 1
#execute as @a[scores={expension_wind_wrath=..10}] run attribute @s gravity modifier remove expension:wind_wrath

execute as @e[tag=expension_wind_wrath_storm] at @s run function expension:wind_wrath/storm
kill @e[scores={expension_wind_wrath=..0},tag=expension_wind_wrath_storm]