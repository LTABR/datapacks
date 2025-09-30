execute store result score .gravity Opcoes run data get storage options ingame.gravity 100

execute if score .gravity Opcoes matches 28 run scoreboard players add .gravity Opcoes 1
execute if score .gravity Opcoes matches 57 run scoreboard players add .gravity Opcoes 1
execute if score .gravity Opcoes matches ..99 run scoreboard players add .gravity Opcoes 1

execute store result storage options ingame.gravity double 0.01 run scoreboard players get .gravity Opcoes

function hns:configuration/gravity/show_gravity_options
