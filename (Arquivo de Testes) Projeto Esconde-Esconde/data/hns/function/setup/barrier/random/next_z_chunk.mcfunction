execute store result storage fill_coordinates first_z int 1.0 run scoreboard players add .first_z Diametro 16
execute store result storage fill_coordinates first_x int 1.0 run scoreboard players operation .first_x Diametro = .second_x Diametro
scoreboard players operation .chunk_x Diametro = .chunk Diametro
scoreboard players remove .chunk_z Diametro 1
