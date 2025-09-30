scoreboard players add .structure_id structure_weights 1

execute if score .structure_id structure_weights matches 1 if score .mansion structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 2
execute if score .structure_id structure_weights matches 2 if score .pillager_outpost structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 3
execute if score .structure_id structure_weights matches 3 if score .village_desert structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 4
execute if score .structure_id structure_weights matches 4 if score .village_plains structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 5
execute if score .structure_id structure_weights matches 5 if score .village_savanna structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 6
execute if score .structure_id structure_weights matches 6 if score .village_snowy structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 7
execute if score .structure_id structure_weights matches 7 if score .village_taiga structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 8
execute if score .structure_id structure_weights matches 8 if score .mineshaft_mesa structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 9
execute if score .structure_id structure_weights matches 9 if score .shipwreck structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 10
execute if score .structure_id structure_weights matches 10 if score .shipwreck_beached structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 11
execute if score .structure_id structure_weights matches 11 if score .jungle_pyramid structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 12
execute if score .structure_id structure_weights matches 12 if score .desert_pyramid structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 13
execute if score .structure_id structure_weights matches 13 if score .swamp_hut structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 14
execute if score .structure_id structure_weights matches 14 if score .end_city structure_weights2 matches ..0 run scoreboard players set .structure_id structure_weights 15

scoreboard players operation .chunk_x Diametro = .chunks_x Diametro
scoreboard players operation .chunk_z Diametro = .chunks_z Diametro

execute store result storage fill_coordinates first_x int 1.0 run scoreboard players operation .first_x Diametro = .first_x_backup Diametro
execute store result storage fill_coordinates first_z int 1.0 run scoreboard players operation .first_z Diametro = .first_z_backup Diametro

scoreboard players operation .first_x Diametro = .second_x Diametro
