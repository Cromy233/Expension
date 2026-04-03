execute as @e[type=#minecraft:arrows,nbt={weapon:{components:{"minecraft:custom_data":{id:"expension:frost_bow"}}}},tag=!frost_bow_arrow_fallin,tag=!frost_bow_arrow] at @s run function expension:frost_bow/arrow
# 这个limit=1是为了防止多重射击不生效, 鉴于原版弓不能附魔多重射击, 其实没必要这么搞 (((
# 25.9.6 : 不知道怎么回事直接提交上去了, 呃呃反正这个也能运行, 就这样吧 (((
# https://github.com/Cromy233/Expension/commit/3b36c5667d50a8443e1070b9bcdbd12d1cd2efcb
execute as @e[tag=frost_bow_marker] at @s run function expension:frost_bow/marker

execute at @e[tag=frost_bow_arrow,tag=!frost_bow_arrow_fallin] run particle snowflake ~ ~ ~ 0 0 0 0 1 normal