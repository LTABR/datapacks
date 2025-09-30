schedule function hns:setup/barrier/random/call_next 1t

execute if score .chunk_z Diametro matches 0 if score .chunk_x Diametro = .chunk Diametro if score .structure_id structure_weights matches 15.. run return run function hns:setup/barrier/random/reset_scoreboard

execute store result bossbar progress value run scoreboard players add .count structure_weights 1
# $execute in hns:caveworld positioned $(first_x) 319 $(first_z) run fill ~ ~ ~ ~ ~ ~ sponge destroy
$execute in hns:caveworld positioned over world_surface positioned $(first_x) ~ $(first_z) run function hns:setup/barrier/random/roll_structure with storage structure_weight_chances structures

execute if score .chunk_x Diametro matches 1.. run function hns:setup/barrier/random/next_x_chunk

execute if score .chunk_z Diametro matches 1.. if score .chunk_x Diametro matches 0 run function hns:setup/barrier/random/next_z_chunk

execute if score .chunk_z Diametro matches 0 if score .chunk_x Diametro = .chunk Diametro unless score .structure_id structure_weights matches 14.. run function hns:setup/barrier/random/next_structure
execute if score .chunk_z Diametro matches 0 if score .chunk_x Diametro = .chunk Diametro if score .structure_id structure_weights matches 14.. run return run function hns:setup/barrier/random/reset_scoreboard

# tellraw @a [{"text": "x = "},{"score":{"name": ".first_x","objective": "Diametro"}},{"text": " z = "},{"score":{"name": ".first_z","objective": "Diametro"}}]
# tellraw @a [{"text": "chunk x = "},{"score":{"name": ".chunk_x","objective": "Diametro"}},{"text": "chunk z = "},{"score":{"name": ".chunk_z","objective": "Diametro"}}]
# tellraw @a [{"text": "structure = "},{"score":{"name": ".structure_id","objective": "structure_weights"}}]
