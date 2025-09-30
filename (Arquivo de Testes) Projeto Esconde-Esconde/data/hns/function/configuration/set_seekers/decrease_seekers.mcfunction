execute if score .seekers Opcoes matches 2.. run scoreboard players remove .seekers Opcoes 1

execute store result score .selected_seekers Opcoes run execute if entity @a[scores={manual_seeker=1..}]
execute if score .seekers Opcoes < .selected_seekers Opcoes run scoreboard players reset @r[scores={manual_seeker=1..}] manual_seeker
scoreboard players reset .selected_seekers Opcoes

execute as @a[tag=Admin] run function hns:configuration/set_seekers/set_seekers_list
