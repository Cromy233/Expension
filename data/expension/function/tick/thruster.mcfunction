scoreboard players remove @a[scores={expension_thruster_cooldown=1..}] expension_thruster_cooldown 1

scoreboard players remove @a[scores={expension_thruster_effect=1..}] expension_thruster_effect 1
execute as @a[scores={expension_thruster_effect=0}] run attribute @s gravity modifier remove expension:thruster
execute as @a[scores={expension_thruster_effect=0},nbt={OnGround:1b}] run attribute @s fall_damage_multiplier modifier remove expension:thruster