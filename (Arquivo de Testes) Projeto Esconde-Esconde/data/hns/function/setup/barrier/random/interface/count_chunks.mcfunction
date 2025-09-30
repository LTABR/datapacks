scoreboard players add .first_x_chunk Diametro 16
scoreboard players add .first_z_chunk Diametro 16

execute if score .first_x_chunk Diametro <= .second_x_chunk Diametro run scoreboard players add .chunk_x Diametro 1
execute if score .first_z_chunk Diametro <= .second_z_chunk Diametro run scoreboard players add .chunk_z Diametro 1

execute unless score .first_x_chunk Diametro > .second_x_chunk Diametro unless score .first_z_chunk Diametro > .second_z_chunk Diametro run function hns:setup/barrier/random/interface/count_chunks
