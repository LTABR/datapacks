data modify storage minecraft:border_saves current_border.dimension set from entity @s SelectedItem.components.minecraft:custom_data.dimension
data modify storage minecraft:border_saves current_border.x set from entity @s SelectedItem.components.minecraft:custom_data.x
data modify storage minecraft:border_saves current_border.z set from entity @s SelectedItem.components.minecraft:custom_data.z
data modify storage minecraft:border_saves current_border.size set from entity @s SelectedItem.components.minecraft:custom_data.size

execute as @s at @s run function hns:setup/barrier/item_save/set_center with storage minecraft:border_saves current_border

data modify storage minecraft:border_saves current_border.hiders_spawn_x set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_x
data modify storage minecraft:border_saves current_border.hiders_spawn_y set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_y
data modify storage minecraft:border_saves current_border.hiders_spawn_z set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_z

data modify storage minecraft:border_saves current_border.seekers_spawn_x set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_x
data modify storage minecraft:border_saves current_border.seekers_spawn_y set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_y
data modify storage minecraft:border_saves current_border.seekers_spawn_z set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_z

function hns:setup/barrier/item_save/set_seekers_spawn with storage minecraft:border_saves current_border
function hns:setup/barrier/item_save/set_hiders_spawn with storage minecraft:border_saves current_border

execute store result score .size border_saves run data get storage border_saves current_border.size

execute store result score .MinutosEspera Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.MinutosEspera
execute store result score .SegundosEspera Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.SegundosEspera
execute store result score .Minutos Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.Minutos
execute store result score .VisaoNoturna Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.VisaoNoturna
execute store result score .revelarPontos Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.revelarPontos
execute store result score .recargafogos Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.recargafogos
execute store result score .recargahusk Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.recargahusk
execute store result score .revelarPosicaoM Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.revelarPosicaoM
execute store result score .revelarPosicaoS Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.revelarPosicaoS
execute store result score .diamantesP Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.diamantesP
execute store result score .diamantesE Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.diamantesE
execute store result score .diamantesPD Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.diamantesPD
execute store result score .diamantesED Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.diamantesED
execute store result score .sempvp Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.sempvp
execute store result score .vitoriaEscondedores Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.vitoriaEscondedores
execute store result score .vitoriaProcuradores Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.vitoriaProcuradores
execute store result score .pontosAbate Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.pontosAbate
execute store result score .hiderToSpectator Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.hiderToSpectator
execute store result score .hiderToSeeker Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.hiderToSeeker
execute store result score .timePerKill Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.timePerKill
execute store result score .seekers Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.seekers
execute store result score .head_drops Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.head_drops
execute store result score .portable_shops Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.portable_shops
execute store result score .start_invisible Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.start_invisible
execute store result score .caixasP Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.caixasP
execute store result score .caixasE Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.caixasE
execute store result score .fall_damage Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.fall_damage
execute store result score .drowningdamage Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.drowningdamage
execute store result score .elytra Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.elytra
execute store result score .initial_pearl Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.initial_pearl
execute store result score .initial_crossbows Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.initial_crossbows
execute store result score .shared_lives Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.shared_lives
execute store result score .manual_seekers Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.manual_seekers
execute store result score .seeker_nametag Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.seeker_nametag
execute store result score .hider_nametag Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.hider_nametag
execute store result score .seekers_glow Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.seekers_glow
execute store result score .last_standing Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.last_standing
execute store result score .pontosPorProcurador Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.pontosPorProcurador
execute store result score .blockLevitation Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.blockLevitation
execute store result score .mineable_blocks Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.mineable_blocks
execute store result score .rabbit_jump Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.rabbit_jump
execute store result score .crawling Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.crawling
execute store result score .seekers_sound Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.seekers_sound
execute store result score .absorption Opcoes run data get entity @s SelectedItem.components.minecraft:custom_data.Opcoes.absorption

data modify storage options seekers set from entity @s SelectedItem.components.minecraft:custom_data.seekers
data modify storage options hiders set from entity @s SelectedItem.components.minecraft:custom_data.hiders

execute if data entity @s SelectedItem.components.minecraft:custom_data.save run function hns:setup/barrier/item_save/load_shops_storage with entity @s SelectedItem.components.minecraft:custom_data

execute if data entity @s SelectedItem.components.minecraft:custom_data.loja_procuradores run data modify storage options loja_procuradores set from entity @s SelectedItem.components.minecraft:custom_data.loja_procuradores.Recipes
execute if data entity @s SelectedItem.components.minecraft:custom_data.loja_escondedores run data modify storage options loja_escondedores set from entity @s SelectedItem.components.minecraft:custom_data.loja_escondedores.Recipes

execute if data entity @s SelectedItem.components.minecraft:custom_data.loja_destrutivel_procuradores run data modify storage options loja_destrutivel_procuradores set from entity @s SelectedItem.components.minecraft:custom_data.loja_destrutivel_procuradores.Recipes
execute if data entity @s SelectedItem.components.minecraft:custom_data.loja_destrutivel_escondedores run data modify storage options loja_destrutivel_escondedores set from entity @s SelectedItem.components.minecraft:custom_data.loja_destrutivel_escondedores.Recipes

function hns:functions/clear_entities
