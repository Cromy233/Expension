### Trap
execute as @e[type=interaction,tag=end_laboratory_trap,nbt={interaction:{}}] at @s run function expension:end_laboratory_trap
execute as @e[type=interaction,tag=end_laboratory_trap] at @s unless block ~ ~ ~ chest run function expension:end_laboratory_trap

### Special Mobs
execute at @e[type=marker,tag=creeper_carry_tnt,tag=spawner] run summon minecraft:creeper ~ ~ ~ {PersistenceRequired:true,Passengers:[{id:"falling_block",BlockState:{Name:"tnt",Properties:{unstable:"true"}}}],Tags:["mob_carry_block"],active_effects:[{id:"weaving",duration:999999999},{id:"oozing",duration:999999999},{id:"infested",duration:999999999}]}
execute at @e[type=marker,tag=small_magma,tag=spawner] run summon minecraft:magma_cube ~ ~ ~ {PersistenceRequired:true,Size:5,attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:1},{id:"minecraft:scale",base:0.2}]}
execute at @e[type=marker,tag=spider_mother,tag=spawner] run summon minecraft:spider ~ ~ ~ {PersistenceRequired:true,Passengers:[{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",PersistenceRequired:true,Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]},{id:"minecraft:cave_spider",Health:5f,attributes:[{id:"minecraft:scale",base:0.65}]}]}
execute at @e[type=marker,tag=super_pillager,tag=spawner] run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:true,equipment:{head:{id:"spawner"},mainhand:{id:"crossbow",components:{enchantments:{"expension:explosive_arrow":2,piercing:1}}}},drop_chances:{head:0}}
execute at @e[type=marker,tag=threatening_skeleton,tag=spawner] run summon wither_skeleton ~ ~ ~ {PersistenceRequired:true,equipment:{mainhand:{id:netherite_sword,components:{enchantments:{fire_aspect:2}}}}}
execute at @e[type=marker,tag=weakening_skeleton,tag=spawner] run summon skeleton ~ ~ ~ {PersistenceRequired:true,equipment:{head:{id:chainmail_helmet},chest:{id:"chainmail_chestplate"},legs:{id:chainmail_leggings},feet:{id:chainmail_boots},mainhand:{id:bow,components:{enchantments:{power:3}}},offhand:{id:"tipped_arrow",components:{potion_contents:{potion:"weakness"}}}}}

kill @e[tag=spawner]
execute as @e[tag=mob_carry_block] on passengers if entity @s[type=falling_block] run data modify entity @s Time set value 0