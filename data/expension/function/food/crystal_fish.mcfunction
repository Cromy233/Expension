particle minecraft:explosion_emitter ~ ~1 ~
particle minecraft:poof ~ ~1 ~ 0 0 0 0.5 100
playsound entity.generic.explode player @a ~ ~1 ~

execute as @e[distance=..5] at @s run damage @s 7 expension:player_explosion_no_scaling by @n[advancements={expension:check/food/crystal_fish=true}]

advancement revoke @s only expension:check/food/crystal_fish