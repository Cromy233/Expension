scoreboard players remove @e[scores={expension_protean_edge_cooldown=1..}] expension_protean_edge_cooldown 1

execute at @e[scores={expension_protean_edge_cooldown=1..}] run particle snowflake ~ ~1 ~ 0.2 0.4 0.2 0 1 normal

execute as @e run attribute @s knockback_resistance modifier remove expension:protean_edge_extra
execute as @e run attribute @s attack_knockback modifier remove expension:protean_edge_extra
execute as @e run attribute @s attack_speed modifier remove expension:protean_edge_extra
execute as @e run attribute @s sweeping_damage_ratio modifier remove expension:protean_edge_extra

execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=0}] run attribute @s knockback_resistance modifier add expension:protean_edge_extra 0.2 add_value
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=1}] run attribute @s attack_knockback modifier add expension:protean_edge_extra 1 add_value
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=2}] run attribute @s attack_speed modifier add expension:protean_edge_extra 0.5 add_value
execute as @e[scores={expension_protean_edge_cooldown=1..,expension_protean_edge_type=4}] run attribute @s sweeping_damage_ratio modifier add expension:protean_edge_extra 1 add_value