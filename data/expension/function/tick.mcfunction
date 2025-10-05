# Y Speed
# execute as @a store result score @s expension_y_speed run data get entity @s Motion[1] 100

# Portal
execute as @e[type=minecraft:item_display,tag=portal] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:item_display,tag=portal] at @s run particle minecraft:witch ^ ^ ^-0.2 0.2 0.2 0.2 0 1 normal

# Thunder Dagger
scoreboard players remove @a[scores={expension_thunder_dagger_cooldown=1..}] expension_thunder_dagger_cooldown 1
execute at @a[scores={expension_thunder_dagger_cooldown=..0},nbt={SelectedItem:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1
execute at @a[scores={expension_thunder_dagger_cooldown=..0},nbt={equipment:{offhand:{components:{"minecraft:custom_data":{id:"expension:thunder_dagger"}}}}}] run particle minecraft:electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 1


# Frost Bow
execute as @e[limit=1,type=#minecraft:arrows,nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:frost_bow"}}}},tag=!frost_bow_arrow_fallin,tag=!frost_bow_arrow] at @s run function expension:frost_bow/arrow with entity @s
# 这个limit=1是为了防止多重射击不生效, 鉴于原版弓不能附魔多重射击, 其实没必要这么搞 (((
# 25.9.6 : 不知道怎么回事直接提交上去了, 呃呃反正这个也能运行, 就这样吧 (((
# https://github.com/Cromy233/Expension/commit/3b36c5667d50a8443e1070b9bcdbd12d1cd2efcb
execute as @e[tag=frost_bow_marker] at @s run function expension:frost_bow/marker

execute at @e[tag=frost_bow_arrow,tag=!frost_bow_arrow_fallin] run particle snowflake ~ ~ ~ 0 0 0 0 1 normal

# Wind Blade
scoreboard players remove @a[scores={expension_wind_blade_cooldown=1..}] expension_wind_blade_cooldown 1

# End Laboratory Trap
execute as @e[type=interaction,tag=end_laboratory_trap,nbt={interaction:{}}] at @s run function expension:end_laboratory_trap
execute as @e[type=interaction,tag=end_laboratory_trap] at @s unless block ~ ~ ~ chest run function expension:end_laboratory_trap

# Special Mobs
execute at @e[type=marker,tag=creeper_carry_tnt,tag=spawner] run summon minecraft:creeper ~ ~ ~ {PersistenceRequired:true,Passengers:[{id:"falling_block",BlockState:{Name:"tnt",Properties:{unstable:"true"}}}],Tags:["mob_carry_block"],active_effects:[{id:"weaving",duration:999999999},{id:"oozing",duration:999999999},{id:"infested",duration:999999999}]}
execute at @e[type=marker,tag=small_magma,tag=spawner] run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:true,Size:5,attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:1},{id:"minecraft:scale",base:0.2}]}
execute at @e[type=marker,tag=spider_mother,tag=spawner] run summon minecraft:spider ~ ~ ~ {PersistenceRequired:true,Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]}]}
execute at @e[type=marker,tag=super_pillager,tag=spawner] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:true,equipment:{head:{id:"spawner"},mainhand:{id:"crossbow",components:{enchantments:{"expension:explosive_arrow":2,piercing:1}}}},drop_chances:{head:0}}
execute at @e[type=marker,tag=threatening_skeleton,tag=spawner] run summon wither_skeleton ~ ~ ~ {PersistenceRequired:true,equipment:{mainhand:{id:netherite_sword,components:{enchantments:{fire_aspect:2}}}}}
execute at @e[type=marker,tag=weakening_skeleton,tag=spawner] run summon skeleton ~ ~ ~ {equipment:{head:{id:chainmail_helmet},chest:{id:"chainmail_chestplate"},legs:{id:chainmail_leggings},feet:{id:chainmail_boots},mainhand:{id:bow,components:{enchantments:{power:3}}},offhand:{id:"tipped_arrow",components:{potion_contents:{potion:"weakness"}}}}}

kill @e[tag=spawner]
execute as @e[tag=mob_carry_block] on passengers if entity @s[type=falling_block] run data modify entity @s Time set value 0

# Death ↓
execute as @a[scores={expension_death=1..}] at @s run function expension:death
scoreboard players remove @a[scores={expension_death=1..}] expension_death 1
