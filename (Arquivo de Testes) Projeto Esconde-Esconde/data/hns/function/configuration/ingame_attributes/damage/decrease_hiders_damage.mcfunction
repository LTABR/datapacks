execute store result score .hiders_damage Opcoes run data get storage options hiders.damage
execute store result score .seekers_damage Opcoes run data get storage options seekers.damage

execute if score .hiders_damage Opcoes matches 1.. run scoreboard players remove .hiders_damage Opcoes 1

execute store result storage options hiders.damage int 1.0 run scoreboard players get .hiders_damage Opcoes

function hns:configuration/ingame_attributes/damage/show_damage_options
