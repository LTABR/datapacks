execute store result score .seekers_damage Opcoes run data get storage options seekers.damage
execute store result score .hiders_damage Opcoes run data get storage options hiders.damage

scoreboard players add .seekers_damage Opcoes 1

execute store result storage options seekers.damage int 1.0 run scoreboard players get .seekers_damage Opcoes

function hns:configuration/ingame_attributes/damage/show_damage_options
