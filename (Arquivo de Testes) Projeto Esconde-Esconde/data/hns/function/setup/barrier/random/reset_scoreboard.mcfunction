schedule clear hns:setup/barrier/random/call_next

tellraw @a [{"text":"Geração de Estruturas Concluída!","color":"green"},{"text":" (","color":"gray"},{"score":{"name":".count","objective":"structure_weights"},"color":"gray"},{"text":" Chunks Percorridos)","color":"gray"}]
tellraw @a[tag=Admin] {"text":"[Remover Entidades]","color":"dark_aqua","bold":false,"underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Clique Para Eliminar Todas as Entidades Nesta Dimensão e Melhorar a Performance.","color":"gray","underlined": false}]},"click_event":{"action":"run_command","command":"/kill @e[type=!minecraft:player,predicate=hns:in_caveworld]"}}

scoreboard players reset .entities Diametro
scoreboard players reset .first_x Diametro
scoreboard players reset .first_z Diametro
scoreboard players reset .first_x_backup Diametro
scoreboard players reset .first_z_backup Diametro
scoreboard players reset .second_x Diametro
scoreboard players reset .second_z Diametro
scoreboard players reset .radius Diametro
scoreboard players reset .chunk Diametro
scoreboard players reset .chunk_x Diametro
scoreboard players reset .chunk_z Diametro
scoreboard players reset .chunks_x Diametro
scoreboard players reset .chunks_z Diametro
scoreboard players reset .count Diametro

scoreboard objectives remove structure_weights
scoreboard objectives remove structure_weights2

function hns:setup/barrier/random/autoplace_spawns with storage fill_coordinates

data remove storage fill_coordinates first_x
data remove storage fill_coordinates first_z
data remove storage fill_coordinates second_x
data remove storage fill_coordinates second_z
data remove storage fill_coordinates fixed_first_x
data remove storage fill_coordinates fixed_first_z
data remove storage fill_coordinates fixed_second_x
data remove storage fill_coordinates fixed_second_z

bossbar remove minecraft:progress
