$execute store result score .option Opcoes run data get storage structure_weight_chances structures.$(structure)
scoreboard players set .max_option Opcoes 100
$scoreboard players remove .max_option Opcoes $(value)
$execute if score .option Opcoes <= .max_option Opcoes store result storage structure_weight_chances structures.$(structure) int 1.0 run scoreboard players add .option Opcoes $(value)
$execute if score .option Opcoes > .max_option Opcoes run data merge storage structure_weight_chances {structures:{$(structure):100}}
scoreboard players reset .option Opcoes
scoreboard players reset .max_option Opcoes

function hns:setup/barrier/random/interface/show_menu
