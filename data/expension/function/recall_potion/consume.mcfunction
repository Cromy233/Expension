data modify storage expension:recall_potion respawn.pos.x set from entity @s respawn.pos[0]
data modify storage expension:recall_potion respawn.pos.y set from entity @s respawn.pos[1]
data modify storage expension:recall_potion respawn.pos.z set from entity @s respawn.pos[2]
function expension:recall_potion/telepoint with storage expension:recall_potion respawn.pos

advancement revoke @s only expension:check/recall_potion_use