execute store result score .seekers_regeneration_fall_damage Opcoes run data get storage options seekers.regeneration_fall_damage

execute if score .seekers_regeneration_fall_damage Opcoes matches ..8 run scoreboard players add .seekers_regeneration_fall_damage Opcoes 1
execute if score .seekers_regeneration_fall_damage Opcoes matches 11 run scoreboard players set .seekers_regeneration_fall_damage Opcoes 0

execute store result storage options seekers.regeneration_fall_damage int 1.0 run scoreboard players get .seekers_regeneration_fall_damage Opcoes

function hns:configuration/ingame_attributes/regeneration/show_regeneration_options
