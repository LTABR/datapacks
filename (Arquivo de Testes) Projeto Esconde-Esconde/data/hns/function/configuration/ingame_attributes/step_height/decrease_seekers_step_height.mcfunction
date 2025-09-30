execute store result score .seekers_step_height Opcoes run data get storage options seekers.step_height 10
execute store result score .hiders_step_height Opcoes run data get storage options hiders.step_height 10

execute if score .seekers_step_height Opcoes matches 1.. run scoreboard players remove .seekers_step_height Opcoes 1

execute store result storage options seekers.step_height double 0.1 run scoreboard players get .seekers_step_height Opcoes

function hns:configuration/ingame_attributes/step_height/show_step_height_options
