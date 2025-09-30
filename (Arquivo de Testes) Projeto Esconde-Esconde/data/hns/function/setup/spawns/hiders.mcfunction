execute as @e[type=minecraft:text_display,tag=spawnescondedores] at @s run fill ~ ~2 ~ ~ ~2 ~ air replace bell
execute as @e[type=minecraft:text_display,tag=spawnescondedores] at @s run forceload remove ~ ~
kill @e[type=minecraft:text_display,tag=spawnescondedores]

summon text_display ~ ~ ~ {text:[{"text":"Spawn "},{"text":"Escondedores","bold":true,"underlined":true,"color":"dark_green"}], billboard:"center",Tags: ["spawnescondedores"], line_width:100}
execute as @e[type=text_display,tag=spawnescondedores] at @s run setblock ~ ~ ~ air

execute as @e[type=text_display,tag=spawnescondedores] at @s run forceload add ~ ~

fill ~ ~2 ~ ~ ~2 ~ bell[attachment=ceiling] keep

execute store result storage border_saves current_border.hiders_spawn_x double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[0]
execute store result storage border_saves current_border.hiders_spawn_y double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[1]
execute store result storage border_saves current_border.hiders_spawn_z double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[2]

execute if entity @e[type=minecraft:text_display,tag=spawnescondedores] if entity @e[type=minecraft:text_display,tag=spawnprocuradores] if entity @a[tag=Admin,distance=..15] run tellraw @a[tag=Admin] {"text":""}
execute if entity @e[type=minecraft:text_display,tag=spawnescondedores] if entity @e[type=minecraft:text_display,tag=spawnprocuradores] if entity @a[tag=Admin,distance=..15] run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/function hns:setup/barrier/item_save/create_item"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Salvar Barreira e Configurações Atuais em um Livro. ","color":"dark_aqua","underlined":false}]},"italic":false,"text":"[Clique Para Salvar a Barreira e Configurações Atuais]","underlined":true}
execute if entity @e[type=minecraft:text_display,tag=spawnescondedores] if entity @e[type=minecraft:text_display,tag=spawnprocuradores] run tellraw @a[tag=Admin] "    "
$execute if entity @e[type=minecraft:text_display,tag=spawnescondedores] if entity @e[type=minecraft:text_display,tag=spawnprocuradores] run data merge storage border_saves {backup_coordinates:{y1:319, y2:-64, dimension:"$(dimension)"}}
$execute if entity @e[type=minecraft:text_display,tag=spawnescondedores] if entity @e[type=minecraft:text_display,tag=spawnprocuradores] run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/execute in $(dimension) run function hns:functions/backup/get_dimension_heights {y1:319, y2:-64, dimension:\"$(dimension)\"}"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Clique Para Criar Uma Cópia da Estrutura do Mapa Selecionado. ","color":"gray","underlined":false},{"text":"Este Processo Impacta Brevemente a Performance.","color":"red","underlined":true}]},"italic":false,"text":"[Criar Backup da Estrutura do Mapa]","underlined":true}
