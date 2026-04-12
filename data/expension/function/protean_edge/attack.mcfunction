execute if score @s expension_protean_edge_cooldown matches 1.. run playsound entity.player.hurt_freeze player @a ~ ~ ~ 1
execute if score @s expension_protean_edge_cooldown matches 1.. if predicate expension:holding/protean_edge/katana run function expension:protean_edge/katana with entity @s

advancement revoke @s only expension:check/protean_edge/attack