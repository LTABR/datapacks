execute as @e[type=minecraft:armor_stand,tag=strength1,limit=1] at @s store result score .jump1 Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=strength2,limit=1] at @s store result score .jump2 Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=strength3,limit=1] at @s store result score .jump3 Opcoes run data get entity @s Pos[1]
scoreboard players operation .max_jump1 Opcoes > .jump1 Opcoes
scoreboard players operation .max_jump2 Opcoes > .jump2 Opcoes
scoreboard players operation .max_jump3 Opcoes > .jump3 Opcoes
execute if score .jump1 Opcoes < .max_jump1 Opcoes run kill @e[type=minecraft:armor_stand,tag=strength1]
execute if score .jump2 Opcoes < .max_jump2 Opcoes run kill @e[type=minecraft:armor_stand,tag=strength2]
execute if score .jump3 Opcoes < .max_jump3 Opcoes run kill @e[type=minecraft:armor_stand,tag=strength3]

execute if entity @e[type=minecraft:armor_stand,tag=jump,limit=1] run schedule function hns:configuration/feather_jump/finish_calculation 1t
execute unless entity @e[type=minecraft:armor_stand,tag=jump,limit=1] run function hns:configuration/feather_jump/reset_scores
execute unless entity @e[type=minecraft:armor_stand,tag=jump,limit=1] run schedule clear hns:configuration/feather_jump/force_calculation
