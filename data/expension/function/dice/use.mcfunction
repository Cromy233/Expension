execute unless predicate expension:sneaking run function expension:dice/roll_main {"roll":1,"max":20}
execute if predicate expension:sneaking run dialog show @s expension:dice
scoreboard players set $result expension_dice 0
loot give @s[gamemode=!creative] loot expension:item_list/dice

advancement revoke @s only expension:check/dice_use