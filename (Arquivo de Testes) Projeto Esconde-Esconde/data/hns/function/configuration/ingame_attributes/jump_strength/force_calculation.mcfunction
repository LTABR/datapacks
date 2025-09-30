execute as @e[type=minecraft:armor_stand,tag=jump,tag=seekers,limit=1] at @s store result score .jump_seekers Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=jump,tag=hiders,limit=1] at @s store result score .jump_hiders Opcoes run data get entity @s Pos[1]
kill @e[type=minecraft:armor_stand,tag=jump]
