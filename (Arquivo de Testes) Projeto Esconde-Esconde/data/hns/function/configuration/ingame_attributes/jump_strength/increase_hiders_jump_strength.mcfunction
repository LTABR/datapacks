execute store result score .hiders_jump_strength Opcoes run data get storage options hiders.jump_strength 100

execute if score .hiders_jump_strength Opcoes matches ..999 run scoreboard players add .hiders_jump_strength Opcoes 5

execute store result storage options hiders.jump_strength double 0.01 run scoreboard players get .hiders_jump_strength Opcoes

function hns:configuration/ingame_attributes/jump_strength/show_jump_strength_options
