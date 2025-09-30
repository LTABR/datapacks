execute unless data storage border_saves current_border run return run tellraw @s {"text":"Não Existe Uma Barreira Para Salvar!","color":"red"}
execute unless entity @e[type=minecraft:text_display,tag=spawnprocuradores] run return run tellraw @s {"text":"Não Existe um Spawn de Procuradores Para Salvar!","color":"red"}
execute unless entity @e[type=minecraft:text_display,tag=spawnescondedores] run return run tellraw @s {"text":"Não Existe um Spawn de Escondedores Para Salvar!","color":"red"}

execute as @s at @s run item replace entity @s weapon.offhand with written_book[minecraft:rarity=rare,minecraft:max_stack_size=64,minecraft:custom_data={book_save:1b},minecraft:written_book_content={title:"",author:"LTA_BR",pages:[{text:"[Carregar Barreira Apenas]",color:gold,"underlined":true,hover_event:{"action":"show_text","value":{"text":"Carregar a Barreira Apenas.","color":"yellow","italic":false,"underlined":true}},click_event:{action:run_command,command:"/function hns:setup/barrier/item_save/load_save"}},{text:"[Carregar Barreira e Opções]","color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Carregar Barreira + Opções.","color":"blue","italic":false,"underlined":true}]},"click_event":{"action":"run_command","command":"/function hns:setup/barrier/item_save/load_save_options with storage options"}}]}] 1

execute store result score .size border_saves run data get storage border_saves current_border.size
execute store result score .x border_saves run data get storage minecraft:border_saves current_border.x 1.0
execute store result score .y border_saves run data get storage minecraft:border_saves current_border.y 1.0
execute store result score .z border_saves run data get storage minecraft:border_saves current_border.z 1.0

execute store result storage border_saves current_border.hiders_spawn_x double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[0]
execute store result storage border_saves current_border.hiders_spawn_y double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[1]
execute store result storage border_saves current_border.hiders_spawn_z double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnescondedores] Pos[2]

execute store result storage border_saves current_border.seekers_spawn_x double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] Pos[0]
execute store result storage border_saves current_border.seekers_spawn_y double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] Pos[1]
execute store result storage border_saves current_border.seekers_spawn_z double 1.0 run data get entity @e[type=minecraft:text_display,limit=1,tag=spawnprocuradores] Pos[2]

execute store result storage placeholder_settings list.MinutosEspera int 1.0 run scoreboard players get .MinutosEspera Opcoes
execute store result storage placeholder_settings list.SegundosEspera int 1.0 run scoreboard players get .SegundosEspera Opcoes
execute store result storage placeholder_settings list.Minutos int 1.0 run scoreboard players get .Minutos Opcoes
execute store result storage placeholder_settings list.VisaoNoturna int 1.0 run scoreboard players get .VisaoNoturna Opcoes
execute store result storage placeholder_settings list.revelarPontos int 1.0 run scoreboard players get .revelarPontos Opcoes
execute store result storage placeholder_settings list.recargafogos int 1.0 run scoreboard players get .recargafogos Opcoes 
execute store result storage placeholder_settings list.recargahusk int 1.0 run scoreboard players get .recargahusk Opcoes
execute store result storage placeholder_settings list.revelarPosicaoM int 1.0 run scoreboard players get .revelarPosicaoM Opcoes
execute store result storage placeholder_settings list.revelarPosicaoS int 1.0 run scoreboard players get .revelarPosicaoS Opcoes
execute store result storage placeholder_settings list.diamantesP int 1.0 run scoreboard players get .diamantesP Opcoes
execute store result storage placeholder_settings list.diamantesE int 1.0 run scoreboard players get .diamantesE Opcoes
execute store result storage placeholder_settings list.diamantesPD int 1.0 run scoreboard players get .diamantesPD Opcoes
execute store result storage placeholder_settings list.diamantesED int 1.0 run scoreboard players get .diamantesED Opcoes
execute store result storage placeholder_settings list.sempvp int 1.0 run scoreboard players get .sempvp Opcoes
execute store result storage placeholder_settings list.vitoriaEscondedores int 1.0 run scoreboard players get .vitoriaEscondedores Opcoes
execute store result storage placeholder_settings list.vitoriaProcuradores int 1.0 run scoreboard players get .vitoriaProcuradores Opcoes
execute store result storage placeholder_settings list.pontosAbate int 1.0 run scoreboard players get .pontosAbate Opcoes
execute store result storage placeholder_settings list.hiderToSpectator int 1.0 run scoreboard players get .hiderToSpectator Opcoes
execute store result storage placeholder_settings list.hiderToSeeker int 1.0 run scoreboard players get .hiderToSeeker Opcoes
execute store result storage placeholder_settings list.timePerKill int 1.0 run scoreboard players get .timePerKill Opcoes
execute store result storage placeholder_settings list.seekers int 1.0 run scoreboard players get .seekers Opcoes
execute store result storage placeholder_settings list.head_drops int 1.0 run scoreboard players get .head_drops Opcoes
execute store result storage placeholder_settings list.portable_shops int 1.0 run scoreboard players get .portable_shops Opcoes
execute store result storage placeholder_settings list.start_invisible int 1.0 run scoreboard players get .start_invisible Opcoes
execute store result storage placeholder_settings list.caixasP int 1.0 run scoreboard players get .caixasP Opcoes
execute store result storage placeholder_settings list.caixasE int 1.0 run scoreboard players get .caixasE Opcoes
execute store result storage placeholder_settings list.fall_damage int 1.0 run scoreboard players get .fall_damage Opcoes
execute store result storage placeholder_settings list.drowningdamage int 1.0 run scoreboard players get .drowningdamage Opcoes
execute store result storage placeholder_settings list.elytra int 1.0 run scoreboard players get .elytra Opcoes
execute store result storage placeholder_settings list.initial_pearl int 1.0 run scoreboard players get .initial_pearl Opcoes
execute store result storage placeholder_settings list.initial_crossbows int 1.0 run scoreboard players get .initial_crossbows Opcoes
execute store result storage placeholder_settings list.shared_lives int 1.0 run scoreboard players get .shared_lives Opcoes
execute store result storage placeholder_settings list.manual_seekers int 1.0 run scoreboard players get .manual_seekers Opcoes
execute store result storage placeholder_settings list.seeker_nametag int 1.0 run scoreboard players get .seeker_nametag Opcoes
execute store result storage placeholder_settings list.hider_nametag int 1.0 run scoreboard players get .hider_nametag Opcoes
execute store result storage placeholder_settings list.seekers_glow int 1.0 run scoreboard players get .seekers_glow Opcoes
execute store result storage placeholder_settings list.last_standing int 1.0 run scoreboard players get .last_standing Opcoes
execute store result storage placeholder_settings list.pontosPorProcurador int 1.0 run scoreboard players get .pontosPorProcurador Opcoes
execute store result storage placeholder_settings list.blockLevitation int 1.0 run scoreboard players get .blockLevitation Opcoes
execute store result storage placeholder_settings list.mineable_blocks int 1.0 run scoreboard players get .mineable_blocks Opcoes
execute store result storage placeholder_settings list.rabbit_jump int 1.0 run scoreboard players get .rabbit_jump Opcoes
execute store result storage placeholder_settings list.crawling int 1.0 run scoreboard players get .crawling Opcoes
execute store result storage placeholder_settings list.seekers_sound int 1.0 run scoreboard players get .seekers_sound Opcoes
execute store result storage placeholder_settings list.absorption int 1.0 run scoreboard players get .absorption Opcoes

scoreboard objectives add shop_saves dummy
execute store result storage placeholder_settings list.shop_save int 1.0 store result storage options save int 1.0 run scoreboard players add .save shop_saves 1

function hns:setup/barrier/item_save/create_shops_storage with storage options
execute as @s at @s run item modify entity @s weapon.offhand hns:insert_shop_save

execute as @s at @s run item modify entity @s weapon.offhand hns:border_name
execute as @s at @s run item modify entity @s weapon.offhand hns:border_lore
execute as @s at @s run item modify entity @s weapon.offhand hns:border_lore_dimension
execute as @s at @s run item modify entity @s weapon.offhand hns:border_ids
execute as @s at @s run item modify entity @s weapon.offhand hns:save_options
# execute as @s at @s run item modify entity @s weapon.offhand hns:save_shops

data remove storage placeholder_settings list

execute unless data entity @s Inventory[{id:"minecraft:anvil"}] run give @s anvil
execute unless data entity @s Inventory[{id:"minecraft:ender_chest"}] run give @s ender_chest

# to save options in the written book components:
# uncomment line 76 and comment lines 65 to 69
