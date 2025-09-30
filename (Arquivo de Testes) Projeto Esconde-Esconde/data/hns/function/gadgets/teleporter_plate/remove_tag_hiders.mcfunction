schedule function hns:gadgets/teleporter_plate/remove_tag_loop 1s

$execute as @a[team=Escondedores] at @s if block ~ ~ ~ air unless entity @e[type=interaction,tag=teleporter_plate,distance=..0.5] run attribute @s[tag=trigger] jump_strength base set $(jump_strength)
execute as @a[team=Escondedores] at @s if block ~ ~ ~ air unless entity @e[type=interaction,tag=teleporter_plate,distance=..0.5] run tag @s[tag=trigger] remove trigger
execute as @a[team=Escondedores] at @s if block ~ ~ ~ air unless entity @e[type=interaction,tag=teleporter_plate,distance=..0.5] run tag @s remove tp
