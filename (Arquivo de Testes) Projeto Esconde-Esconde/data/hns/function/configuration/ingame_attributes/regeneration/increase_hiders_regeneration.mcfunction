execute store result score .hiders_regeneration Opcoes run data get storage options hiders.regeneration

execute if score .hiders_regeneration Opcoes matches ..8 run scoreboard players add .hiders_regeneration Opcoes 1
execute if score .hiders_regeneration Opcoes matches 11 run scoreboard players set .hiders_regeneration Opcoes 0

execute store result storage options hiders.regeneration int 1.0 run scoreboard players get .hiders_regeneration Opcoes

function hns:configuration/ingame_attributes/regeneration/show_regeneration_options
