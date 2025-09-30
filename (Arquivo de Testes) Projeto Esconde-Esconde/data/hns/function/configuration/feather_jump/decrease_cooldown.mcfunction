execute store result score .rabbit_jump_cooldown1_seekers Opcoes run data get storage minecraft:options seekers.rabbit_jump_cooldown1 0.05
execute store result score .rabbit_jump_cooldown2_seekers Opcoes run data get storage minecraft:options seekers.rabbit_jump_cooldown2 0.05

execute store result score .rabbit_jump_cooldown1_hiders Opcoes run data get storage minecraft:options hiders.rabbit_jump_cooldown1 0.05
execute store result score .rabbit_jump_cooldown2_hiders Opcoes run data get storage minecraft:options hiders.rabbit_jump_cooldown2 0.05

$execute store result storage options $(team).rabbit_jump_$(option_type) int 20 if score .rabbit_jump_$(option_type)_$(team) Opcoes matches 1.. run scoreboard players remove .rabbit_jump_$(option_type)_$(team) Opcoes 1

function hns:configuration/feather_jump/show_feather_jump_options
