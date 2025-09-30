execute store result score .entities Diametro run data get storage structure_weight_chances structures.entities

execute if score .entities Diametro matches 1 run scoreboard players set .entities Diametro 2
execute if score .entities Diametro matches 0 run scoreboard players set .entities Diametro 1

execute if score .entities Diametro matches 2 run scoreboard players set .entities Diametro 0

execute store result storage structure_weight_chances structures.entities int 1.0 run scoreboard players get .entities Diametro

function hns:setup/barrier/random/interface/show_menu
