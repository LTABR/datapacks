execute store result score CentroX Diametro run data get storage border_saves current_border.x
execute store result score CentroZ Diametro run data get storage border_saves current_border.z

scoreboard players set .2 Diametro 2
execute store result score .radius Diametro run worldborder get
scoreboard players operation .radius Diametro /= .2 Diametro

execute store result score .second_x Diametro run scoreboard players operation .first_x Diametro = CentroX Diametro
execute store result score .second_z Diametro run scoreboard players operation .first_z Diametro = CentroZ Diametro

scoreboard players operation .first_x Diametro -= .radius Diametro
scoreboard players operation .first_z Diametro -= .radius Diametro

scoreboard players operation .second_x Diametro += .radius Diametro
scoreboard players operation .second_z Diametro += .radius Diametro

execute store result storage fill_coordinates first_x int 1.0 run scoreboard players operation .first_x_chunk Diametro = .first_x Diametro
execute store result storage fill_coordinates first_z int 1.0 run scoreboard players operation .first_z_chunk Diametro = .first_z Diametro

execute store result storage fill_coordinates second_x int 1.0 run scoreboard players operation .second_x_chunk Diametro = .second_x Diametro
execute store result storage fill_coordinates second_z int 1.0 run scoreboard players operation .second_z_chunk Diametro = .second_z Diametro

scoreboard players set .chunk_x Diametro 0
scoreboard players set .chunk_z Diametro 0

function hns:setup/barrier/random/interface/count_chunks

execute store result score .chunk Diametro run scoreboard players add .chunk_x Diametro 1
scoreboard players add .chunk_z Diametro 1

scoreboard players reset .2 Diametro
scoreboard players reset .first_x Diametro
scoreboard players reset .first_z Diametro
scoreboard players reset .second_x Diametro
scoreboard players reset .second_z Diametro
scoreboard players reset .first_x_chunk Diametro
scoreboard players reset .first_z_chunk Diametro
scoreboard players reset .second_x_chunk Diametro
scoreboard players reset .second_z_chunk Diametro

scoreboard players operation .total_chunks Diametro = .chunk_x Diametro
scoreboard players operation .total_chunks Diametro *= .chunk_z Diametro

scoreboard objectives add structure_weights2 dummy

execute store result score .mansion structure_weights2 run data get storage structure_weight_chances structures.mansion
execute store result score .pillager_outpost structure_weights2 run data get storage structure_weight_chances structures.pillager_outpost
execute store result score .village_desert structure_weights2 run data get storage structure_weight_chances structures.village_desert
execute store result score .village_plains structure_weights2 run data get storage structure_weight_chances structures.village_plains
execute store result score .village_savanna structure_weights2 run data get storage structure_weight_chances structures.village_savanna
execute store result score .village_snowy structure_weights2 run data get storage structure_weight_chances structures.village_snowy
execute store result score .village_taiga structure_weights2 run data get storage structure_weight_chances structures.village_taiga
execute store result score .mineshaft_mesa structure_weights2 run data get storage structure_weight_chances structures.mineshaft_mesa
execute store result score .shipwreck structure_weights2 run data get storage structure_weight_chances structures.shipwreck
execute store result score .shipwreck_beached structure_weights2 run data get storage structure_weight_chances structures.shipwreck_beached
execute store result score .jungle_pyramid structure_weights2 run data get storage structure_weight_chances structures.jungle_pyramid
execute store result score .desert_pyramid structure_weights2 run data get storage structure_weight_chances structures.desert_pyramid
execute store result score .swamp_hut structure_weights2 run data get storage structure_weight_chances structures.swamp_hut
execute store result score .end_city structure_weights2 run data get storage structure_weight_chances structures.end_city

scoreboard players set .total_structures structure_weights2 0

execute if score .mansion structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .pillager_outpost structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .village_desert structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .village_plains structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .village_savanna structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .village_snowy structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .village_taiga structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .mineshaft_mesa structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .shipwreck structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .shipwreck_beached structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .jungle_pyramid structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .desert_pyramid structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .swamp_hut structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1
execute if score .end_city structure_weights2 matches 1.. run scoreboard players add .total_structures structure_weights2 1

execute store result score .total_rolls Diametro run scoreboard players operation .total_structures structure_weights2 *= .total_chunks Diametro
execute store result bossbar progress max run scoreboard players get .total_rolls Diametro

scoreboard objectives remove structure_weights2

