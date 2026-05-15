$execute if predicate expension:recall_potion/overworld in minecraft:overworld run tp @s $(x) $(y) $(z)
$execute if predicate expension:recall_potion/the_nether in minecraft:the_nether run tp @s $(x) $(y) $(z)
$execute if predicate expension:recall_potion/the_end in minecraft:the_end run tp @s $(x) $(y) $(z)

$execute positioned $(x) $(y) $(z) run playsound minecraft:entity.player.teleport player @a
$execute positioned $(x) $(y) $(z) run particle minecraft:enchant ~ ~1 ~ 0.7 0.7 0.7 0.5 50
$execute positioned $(x) $(y) $(z) run particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 2 50

$execute positioned $(x) $(y) $(z) run playsound minecraft:block.beacon.activate player @a ~ ~-1 ~
$execute positioned $(x) $(y) $(z) run particle minecraft:enchant ~ ~ ~ 0.7 0.7 0.7 0.5 50
$execute positioned $(x) $(y) $(z) run particle minecraft:witch ~ ~ ~ 0.7 0.7 0.7 1 50