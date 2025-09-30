execute store result score .absorption Opcoes run data get storage options ingame.absorption

execute if score .absorption Opcoes matches 0..254 run scoreboard players remove .absorption Opcoes 1
execute if score .absorption Opcoes matches -1 run scoreboard players set .absorption Opcoes 255

execute store result storage options ingame.absorption int 1.0 run scoreboard players get .absorption Opcoes
function hns:configuration/ingame_attributes/absorption/show_absorption_options
