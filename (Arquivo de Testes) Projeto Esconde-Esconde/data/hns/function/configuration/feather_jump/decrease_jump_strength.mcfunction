$execute store result score .rabbit_jump_$(option_type) Opcoes run data get storage options ingame.rabbit_jump_$(option_type) 100

$execute if score .rabbit_jump_$(option_type) Opcoes matches 6.. store result storage options ingame.rabbit_jump_$(option_type) double 0.01 run scoreboard players remove .rabbit_jump_$(option_type) Opcoes 5

function hns:configuration/feather_jump/show_feather_jump_options
