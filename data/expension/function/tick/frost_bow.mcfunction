### 清除拉弓效果
execute as @e[advancements={expension:check/frost_bow/charge=false}] run attribute @s armor modifier remove expension:frost_bow
execute as @e[advancements={expension:check/frost_bow/charge=false}] run attribute @s knockback_resistance modifier remove expension:frost_bow

### 冰冻箭初始化
execute as @e[type=#minecraft:arrows,nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:frost_bow"}}}},tag=!expension_frost_bow_arrow_affected] if data entity @s {crit:1b} run function expension:frost_bow/crit
### Frost Arrow Particle
execute at @e[scores={expension_frost_bow_arrow=1..}] run particle snowflake ~ ~ ~ 0 0 0 0 1 normal
### Frost Arrow Life
execute as @e[scores={expension_frost_bow_arrow=..0}] run data modify entity @s NoGravity set value 0b
scoreboard players remove @e[scores={expension_frost_bow_arrow=1..}] expension_frost_bow_arrow 1
### Frost Arrow Freeze
execute as @e[scores={expension_frost_bow_arrow=1..},nbt={inGround:1b}] at @s run function expension:frost_bow/freeze

### 冰冻效果
execute at @e[scores={expension_frost_bow_frosted=1..}] run particle block_crumble{block_state:{Name:"minecraft:ice"}} ~ ~0.5 ~ 0.3 0.3 0.3 0 1 normal
execute as @e[scores={expension_frost_bow_frosted=1..}] run attribute @s movement_speed modifier add expension:frost_bow_frosted -0.5 add_multiplied_total
execute as @e[scores={expension_frost_bow_frosted=1..}] run attribute @s jump_strength modifier add expension:frost_bow_frosted -1 add_multiplied_total
execute as @e[scores={expension_frost_bow_frosted=..0}] run attribute @s movement_speed modifier remove expension:frost_bow_frosted
execute as @e[scores={expension_frost_bow_frosted=..0}] run attribute @s jump_strength modifier remove expension:frost_bow_frosted
scoreboard players remove @e[scores={expension_frost_bow_frosted=1..}] expension_frost_bow_frosted 1