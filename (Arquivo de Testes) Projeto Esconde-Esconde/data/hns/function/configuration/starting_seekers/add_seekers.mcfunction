execute store result score .players Opcoes run execute if entity @a[gamemode=!spectator]

execute if score .seekers Opcoes < .players Opcoes run scoreboard players add .seekers Opcoes 1
execute if score .seekers Opcoes = .players Opcoes run scoreboard players remove .seekers Opcoes 1

execute if score .seekers Opcoes matches 0 run scoreboard players add .seekers Opcoes 1

function hns:configuration/starting_seekers/show_seekers_options
