execute as @e[type=minecraft:armor_stand,tag=strength1,limit=1] at @s store result score .jump1 Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=strength2,limit=1] at @s store result score .jump2 Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=strength3,limit=1] at @s store result score .jump3 Opcoes run data get entity @s Pos[1]
kill @e[type=minecraft:armor_stand,tag=jump]

function hns:configuration/feather_jump/reset_scores
