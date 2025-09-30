$execute store result score .option Opcoes run data get storage structure_weight_chances structures.$(structure)
$execute unless score .option Opcoes matches $(value).. run data merge storage structure_weight_chances {structures:{$(structure):0}}
$execute if score .option Opcoes matches $(value).. store result storage structure_weight_chances structures.$(structure) int 1.0 run scoreboard players remove .option Opcoes $(value)
scoreboard players reset .option Opcoes

function hns:setup/barrier/random/interface/show_menu
