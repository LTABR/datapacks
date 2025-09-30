execute as @e[type=minecraft:armor_stand,tag=jump,tag=seekers,limit=1] at @s store result score .jump_seekers Opcoes run data get entity @s Pos[1]
execute as @e[type=minecraft:armor_stand,tag=jump,tag=hiders,limit=1] at @s store result score .jump_hiders Opcoes run data get entity @s Pos[1]
scoreboard players operation .max_jump_hiders Opcoes > .jump_hiders Opcoes
scoreboard players operation .max_jump_seekers Opcoes > .jump_seekers Opcoes
execute if score .jump_seekers Opcoes < .max_jump_seekers Opcoes run kill @e[type=minecraft:armor_stand,tag=jump,tag=seekers]
execute if score .jump_hiders Opcoes < .max_jump_hiders Opcoes run kill @e[type=minecraft:armor_stand,tag=jump,tag=hiders]

execute if entity @e[type=minecraft:armor_stand,tag=jump] run schedule function hns:configuration/ingame_attributes/jump_strength/finish_calculation 1t
execute unless entity @e[type=minecraft:armor_stand,tag=jump] run function hns:configuration/ingame_attributes/jump_strength/reset_scores
execute unless entity @e[type=minecraft:armor_stand,tag=jump] run schedule clear hns:configuration/ingame_attributes/jump_strength/force_calculation
