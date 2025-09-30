schedule clear hns:loop/main_loop
schedule clear hns:timer/hiding_second
schedule clear hns:refill/firework
schedule clear hns:refill/husk
schedule clear hns:sorter/end_sorter
schedule clear hns:sorter/sort
schedule clear hns:gadgets/teleporter_plate/remove_tag_loop

$scoreboard players set .destructible_mode Opcoes $(destructible_mode)
scoreboard players set .start Opcoes 1
scoreboard players reset @a[scores={saiu=1..}] saiu
function hns:functions/reset_match

scoreboard players reset * Pontos
title @a times 20t 60t 20t

execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 if function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons run tellraw @a[tag=Admin] [{"text": "Atenção:","color": "dark_red","bold": true},{"text":" Você Está Iniciando Uma Partida Com Armas de Longa Distância Apenas na Loja e Destruição de Blocos Intangíveis Desligada.","color": "red","bold": false}]
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"text": ""}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] [{"text": "Atenção: ","color": "red"},{"text":"Você Está Iniciando Uma Partida SEM Armas de Longa Distância e SEM Destruição de Blocos Intangíveis.","color": "dark_red","bold": false,"underlined": true}]
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"text": ""}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] [{"text":"A Vitória Dos Procuradores Pode Ser ","color": "red","bold": true,"underlined": true},{"text":"IMPOSSÍVEL","color": "dark_red","bold": true,"underlined": true},{"text":"!","color": "red","bold": true,"underlined": true}]
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"text": ""}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"bold":true,"click_event":{"action":"run_command","command":"/function hns:start {destructible_mode:0}"},"color":"dark_red","hover_event":{"action":"show_text","value":{"text":"CONFIRMAR INÍCIO","color":"red","bold":true}},"text":"[INICIAR MESMO ASSIM]","underlined":true}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"bold":false,"click_event":{"action":"run_command","command":"/function hns:give/admin_book"},"color":"gold","hover_event":{"action":"show_text","value":{"text":"Cancelar Início.","color":"gold"}},"italic":false,"text":"[Cancelar]","underlined":true}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 run tellraw @a[tag=Admin] {"text": ""}
execute unless score .destructible_mode Opcoes matches 1 if score .mineable_blocks Opcoes matches 0 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons unless score .confirm_start Opcoes matches 1 store result score .confirm_start Opcoes run return 1

schedule function hns:sorter/sorting 3s
tellraw @a[tag=Admin] {"bold":true,"click_event":{"action":"run_command","command":"/function hns:stop"},"color":"dark_red","hover_event":{"action":"show_text","value":{"text":"Cancelar Partida.","color":"red"}},"italic":true,"text":"[CLIQUE PARA CANCELAR]","underlined":true}

execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] run schedule clear hns:sorter/sorting
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] run title @a[tag=Admin] title {"text":"Spawn Escondedores","color":"red"}
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] run title @a[tag=Admin] subtitle {"text":"Não Configurado!","color":"red"}
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] run return run function hns:give/admin_book

execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] run schedule clear hns:sorter/sorting
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] run title @a[tag=Admin] title {"text":"Spawn Procuradores","color":"red"}
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] run title @a[tag=Admin] subtitle {"text":"Não Configurado!","color":"red"}
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] run return run function hns:give/admin_book

execute unless data storage border_saves current_border run schedule clear hns:sorter/sorting
execute unless data storage border_saves current_border run title @a[tag=Admin] title {"text":"Barreira","color":"red"}
execute unless data storage border_saves current_border run title @a[tag=Admin] subtitle {"text":"Não Configurada!","color":"red"}
execute unless data storage border_saves current_border run return run function hns:give/admin_book

execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] run title @a[tag=!Admin] clear
execute unless entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] run title @a[tag=!Admin] clear

execute as @e[type=minecraft:villager,tag=exemplo_procurador] at @s run setblock ~ ~-1 ~ air

scoreboard players set .error Opcoes 3
execute store result score .players Opcoes run execute if entity @a[gamemode=!spectator]
execute if score .players Opcoes matches ..1 run function hns:missing_error
execute if score .players Opcoes matches ..1 run return 3

scoreboard players set .error Opcoes 4
execute if score .seekers Opcoes >= .players Opcoes run function hns:missing_error
execute if score .seekers Opcoes matches ..-1 run function hns:missing_error
execute if score .seekers Opcoes matches ..-1 run return 4

scoreboard players set .error Opcoes 5
scoreboard players operation .players_placeholder Opcoes = .players Opcoes
scoreboard players operation .players_placeholder Opcoes -= .seekers Opcoes
execute if score .players_placeholder Opcoes matches 1 if score .last_standing Opcoes matches 1 run function hns:missing_error
execute if score .players_placeholder Opcoes matches 1 if score .last_standing Opcoes matches 1 run return 5
execute if score .cancel Opcoes matches 1 run return 5
scoreboard players reset players_placeholder Opcoes

scoreboard players set .error Opcoes 1
execute if score .SegundosEspera Opcoes matches ..-1 run function hns:missing_error
execute if score .MinutosEspera Opcoes matches ..-1 run function hns:missing_error
execute if score .Minutos Opcoes matches ..-1 run function hns:missing_error
execute unless score .VisaoNoturna Opcoes matches 0..1 run function hns:missing_error
execute if score .revelarPontos Opcoes matches ..-1 run function hns:missing_error
execute if score .recargafogos Opcoes matches ..-1 run function hns:missing_error
execute if score .recargahusk Opcoes matches ..-1 run function hns:missing_error
execute if score .recargacaixa Opcoes matches ..-1 run function hns:missing_error
execute if score .diamantesP Opcoes matches ..-1 run function hns:missing_error
execute if score .diamantesE Opcoes matches ..-1 run function hns:missing_error

scoreboard players reset .cancel Opcoes

title @a title {"text":"Partida iniciando...","color":"white","italic":true}
title @a subtitle {"text":" "}
