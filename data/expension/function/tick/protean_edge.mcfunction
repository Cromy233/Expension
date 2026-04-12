scoreboard players remove @e[scores={expension_protean_edge_cooldown=1..}] expension_protean_edge_cooldown 1

execute at @e[scores={expension_protean_edge_cooldown=1..}] run particle snowflake ~ ~1 ~ 0.2 0.4 0.2 0 1 normal

execute as @e run attribute @s movement_speed modifier remove expension:protean_edge_extra
execute as @e run attribute @s attack_knockback modifier remove expension:protean_edge_extra
execute as @e run attribute @s attack_speed modifier remove expension:protean_edge_extra
execute as @e run attribute @s sweeping_damage_ratio modifier remove expension:protean_edge_extra

execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=0}] run attribute @s movement_speed modifier add expension:protean_edge_extra 0.2 add_multiplied_base
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=1}] run attribute @s attack_knockback modifier add expension:protean_edge_extra 1.5 add_value
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=2}] run attribute @s attack_speed modifier add expension:protean_edge_extra 0.6 add_value
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=4}] run attribute @s sweeping_damage_ratio modifier add expension:protean_edge_extra 1 add_value

effect give @e[tag=expension_protean_edge_katana] weakness 2 0 false
effect give @e[tag=expension_protean_edge_katana] slowness 2 1 false
tag @e[tag=expension_protean_edge_katana] remove expension_protean_edge_katana