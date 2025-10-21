summon minecraft:item ~ ~ ~ {Item:{id:"firework_rocket"}}
item replace entity @n[type=item] container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @n[type=item] container.0
kill @n[type=item]

advancement revoke @s only hns:prevent_offhand_firework
