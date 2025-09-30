execute store result score .fall_damage_multiplier Opcoes run data get storage options ingame.fall_damage_multiplier 10

execute if score .fall_damage_multiplier Opcoes matches 1.. run scoreboard players remove .fall_damage_multiplier Opcoes 1

execute store result storage options ingame.fall_damage_multiplier double 0.1 run scoreboard players get .fall_damage_multiplier Opcoes

function hns:configuration/ingame_attributes/fall_damage/show_fall_damage_multiplier_options
