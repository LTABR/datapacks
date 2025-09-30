execute store result score .hiders_scale Opcoes run data get storage options hiders.scale 100
execute store result score .seekers_scale Opcoes run data get storage options seekers.scale 100

scoreboard players add .hiders_scale Opcoes 5

execute store result storage options hiders.scale double 0.01 run scoreboard players get .hiders_scale Opcoes

function hns:configuration/ingame_attributes/scale/show_scale_options
