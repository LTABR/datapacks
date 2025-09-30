execute store result score .hiders_range Opcoes run data get storage options hiders.range 10
execute store result score .seekers_range Opcoes run data get storage options seekers.range 10

scoreboard players add .hiders_range Opcoes 5

execute store result storage options hiders.range double 0.1 run scoreboard players get .hiders_range Opcoes

function hns:configuration/ingame_attributes/range/show_range_options
