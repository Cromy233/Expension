scoreboard players remove @a[scores={expension_thruster=1..}] expension_thruster 1
execute as @a[scores={expension_thruster=0}] run attribute @s gravity modifier remove expension:thruster
execute as @a[scores={expension_thruster=0},nbt={OnGround:1b}] run attribute @s fall_damage_multiplier modifier remove expension:thruster