summon armor_stand ~ ~ ~ {Tags:["put_on_head"],Invisible:true,Invulnerable:true,NoGravity:true,attributes:[{id:"scale",base:0}]}
item replace entity @n[tag=fun_put_on_head] armor.head from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @n[tag=fun_put_on_head] armor.head
kill @n[tag=fun_put_on_head]