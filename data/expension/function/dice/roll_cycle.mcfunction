# $(max) $(roll)

$execute store result score $temp expension_dice run random value 1..$(max)
scoreboard players operation $result expension_dice += $temp expension_dice

scoreboard players remove $roll_temp expension_dice 1
$execute unless score $roll_temp expension_dice matches 0 run function expension:dice/roll_cycle {"roll":$(roll),"max":$(max)}