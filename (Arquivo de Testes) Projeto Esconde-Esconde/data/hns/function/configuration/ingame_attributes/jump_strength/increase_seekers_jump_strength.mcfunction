execute store result score .seekers_jump_strength Opcoes run data get storage options seekers.jump_strength 100

execute if score .seekers_jump_strength Opcoes matches ..996 run scoreboard players add .seekers_jump_strength Opcoes 5

execute store result storage options seekers.jump_strength double 0.01 run scoreboard players get .seekers_jump_strength Opcoes

function hns:configuration/ingame_attributes/jump_strength/show_jump_strength_options
