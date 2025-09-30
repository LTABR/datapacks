execute store result score .absorption Opcoes run data get storage options ingame.absorption

execute if score .absorption Opcoes matches ..253 run scoreboard players add .absorption Opcoes 1
execute if score .absorption Opcoes matches 255 run scoreboard players set .absorption Opcoes 0

execute store result storage options ingame.absorption int 1.0 run scoreboard players get .absorption Opcoes
function hns:configuration/ingame_attributes/absorption/show_absorption_options
