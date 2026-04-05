### CD和潜行检测
execute unless score @s expension_wind_wrath matches ..100 run scoreboard players set @s expension_wind_wrath 0
execute unless predicate expension:sneaking if score @s expension_wind_wrath matches 0 run function expension:wind_wrath/dash
execute if predicate expension:sneaking if score @s expension_wind_wrath matches 0 run function expension:wind_wrath/release

### 重置
advancement revoke @s only expension:check/wind_wrath_use