execute store result score .safe_fall_distance Opcoes run data get storage options ingame.safe_fall_distance 10

execute if score .safe_fall_distance Opcoes matches ..499 run scoreboard players add .safe_fall_distance Opcoes 5

execute store result storage options ingame.safe_fall_distance double 0.1 run scoreboard players get .safe_fall_distance Opcoes

function hns:configuration/ingame_attributes/fall_damage/show_fall_damage_multiplier_options
