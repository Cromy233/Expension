### Terra Greataxe Protection
execute at @e[type=item,distance=..5,nbt={Age:0s,Item:{components:{"minecraft:custom_data":{"id":"expension:terra_greataxe"}}}}] run function expension:terra_greataxe/death
### Reset Scores
scoreboard players set @s expension_frost_bow_frosted 0
scoreboard players set @s expension_thunder_dagger_legacy_cooldown 0
scoreboard players set @s expension_thruster 0
scoreboard players set @s expension_wind_blade_cooldown 0