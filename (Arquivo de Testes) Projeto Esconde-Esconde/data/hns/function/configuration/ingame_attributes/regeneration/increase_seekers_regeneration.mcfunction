execute store result score .seekers_regeneration Opcoes run data get storage options seekers.regeneration

execute if score .seekers_regeneration Opcoes matches ..8 run scoreboard players add .seekers_regeneration Opcoes 1
execute if score .seekers_regeneration Opcoes matches 11 run scoreboard players set .seekers_regeneration Opcoes 0

execute store result storage options seekers.regeneration int 1.0 run scoreboard players get .seekers_regeneration Opcoes

function hns:configuration/ingame_attributes/regeneration/show_regeneration_options
