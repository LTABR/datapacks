# clear schedules
schedule clear hns:loop/main_loop
schedule clear hns:timer/hiding_second
schedule clear hns:refill/firework
schedule clear hns:refill/husk
schedule clear hns:sorter/end_sorter
schedule clear hns:sorter/sorting
schedule clear hns:sorter/sort
schedule clear hns:timer/second
schedule clear hns:loop/firework_spark
schedule clear hns:loop/pvp/disable_pvp_loop

# reset spawns
execute at @e[type=minecraft:text_display,tag=spawnescondedores] run fill ~ ~2 ~ ~ ~2 ~ air replace bell
execute at @e[type=minecraft:text_display,tag=spawnescondedores] run forceload remove ~ ~
kill @e[type=minecraft:text_display,tag=spawnescondedores]
execute at @e[type=minecraft:text_display,tag=spawnprocuradores] run forceload remove ~ ~
kill @e[type=minecraft:text_display,tag=spawnprocuradores]

# reset worldborder
worldborder center 0 0
worldborder set 59999968
worldborder damage amount 0.2
worldborder damage buffer 5
worldborder warning distance 5
worldborder warning time 15

# remove teams
team remove Escondedores
team remove Procuradores
team remove moderador

# reset gamerules
gamerule keepInventory false
gamerule mobGriefing true
gamerule commandBlockOutput true
gamerule doEntityDrops true
gamerule doMobSpawning true
gamerule doMobLoot true
gamerule doTraderSpawning true
gamerule doPatrolSpawning true
gamerule doWeatherCycle true
gamerule doImmediateRespawn false
gamerule doFireTick true
gamerule doTileDrops true
gamerule doWardenSpawning true
gamerule announceAdvancements true
gamerule drowningDamage true
gamerule fallDamage true
gamerule naturalRegeneration true
gamerule randomTickSpeed 3
gamerule spectatorsGenerateChunks true
gamerule locatorBar true
gamerule commandModificationBlockLimit 32768
gamerule reducedDebugInfo false
gamerule blockExplosionDropDecay true
gamerule disableElytraMovementCheck false
gamerule disablePlayerMovementCheck false
gamerule doInsomnia true
gamerule doVinesSpread true
gamerule projectilesCanBreakBlocks true
gamerule sendCommandFeedback true
gamerule spawnRadius 10
gamerule tntExplodes true
gamerule tntExplosionDropDecay false


# remove scoreboards
scoreboard objectives remove shared_lives
scoreboard objectives remove Mortes
scoreboard objectives remove fome
scoreboard objectives remove Cronometro
scoreboard objectives remove Pontos
scoreboard objectives remove Abates
scoreboard objectives remove kill_increase_time
scoreboard objectives remove MorteVillager
scoreboard objectives remove prioridadepe
scoreboard objectives remove prioridadefogos
scoreboard objectives remove prioridadehusk
scoreboard objectives remove pontosTotais
scoreboard objectives remove saiu
scoreboard objectives remove Opcoes
scoreboard objectives remove diamantes
scoreboard objectives remove vara
scoreboard objectives remove teleporterPlate
scoreboard objectives remove player_ids
scoreboard objectives remove teleportersLinks
scoreboard objectives remove teleport_order
scoreboard objectives remove teleporterPriority
scoreboard objectives remove teleporterPriority2
scoreboard objectives remove honey
scoreboard objectives remove gravel_box
scoreboard objectives remove speed_horn
scoreboard objectives remove chorus
scoreboard objectives remove used_pearl
scoreboard objectives remove border_saves
scoreboard objectives remove bell
scoreboard objectives remove thrown
scoreboard objectives remove blocked
scoreboard objectives remove damageTaken
scoreboard objectives remove crossbow_bait
scoreboard objectives remove box
scoreboard objectives remove bear_trap
scoreboard objectives remove novacaixa
scoreboard objectives remove teleporter_portal
scoreboard objectives remove Vida
scoreboard objectives remove manual_seeker
scoreboard objectives remove open_trapped_chest
scoreboard objectives remove open_chest
scoreboard objectives remove open_barrel
scoreboard objectives remove open_enderchest
scoreboard objectives remove open_shulker_box
scoreboard objectives remove open_blast_furnace
scoreboard objectives remove open_brewingstand
scoreboard objectives remove open_furnace
scoreboard objectives remove open_smoker
scoreboard objectives remove open_dispenser
scoreboard objectives remove open_dropper
scoreboard objectives remove open_hopper
scoreboard objectives remove alarm_trap
scoreboard objectives remove esmeraldas
scoreboard objectives remove esmeraldas_placeholder
scoreboard objectives remove pontosTotais_placeholder
scoreboard objectives remove interacted
scoreboard objectives remove remove_jump
scoreboard objectives remove structure_weights
scoreboard objectives remove seeker_shop
scoreboard objectives remove rabbit_jump
scoreboard objectives remove normal_jump
scoreboard objectives remove Diametro
scoreboard objectives remove seat
scoreboard objectives remove seat_health
scoreboard objectives remove ride_seat
scoreboard objectives remove crawling
scoreboard objectives remove playerCounter
scoreboard objectives remove bat_spawn_egg
scoreboard objectives remove cobweb_trap
scoreboard objectives remove rabbit_jump_cooldown
scoreboard objectives remove interact_villager
scoreboard objectives remove wormhole_potion
scoreboard objectives remove turtle_helmet

# reset past entities
execute as @e[type=minecraft:armor_stand] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:item_frame] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Invulnerable:false}

# kill entities & clear tags
function hns:functions/clear_entities
function hns:functions/clear_tags
tag @a remove Admin

# remove storages
data remove storage minecraft:loja_barril1_procuradores Items
data remove storage minecraft:loja_barril2_procuradores Items
data remove storage minecraft:loja_barril3_procuradores Items
data remove storage minecraft:loja_barril4_procuradores Items
data remove storage minecraft:loja_barril5_procuradores Items
data remove storage minecraft:loja_barril1_escondedores Items
data remove storage minecraft:loja_barril2_escondedores Items
data remove storage minecraft:loja_barril3_escondedores Items
data remove storage minecraft:loja_barril4_escondedores Items
data remove storage minecraft:loja_barril5_escondedores Items

data remove storage minecraft:loja_destrutivel_barril1_procuradores Items
data remove storage minecraft:loja_destrutivel_barril2_procuradores Items
data remove storage minecraft:loja_destrutivel_barril3_procuradores Items
data remove storage minecraft:loja_destrutivel_barril4_procuradores Items
data remove storage minecraft:loja_destrutivel_barril5_procuradores Items
data remove storage minecraft:loja_destrutivel_barril6_procuradores Items
data remove storage minecraft:loja_destrutivel_barril7_procuradores Items
data remove storage minecraft:loja_destrutivel_barril8_procuradores Items
data remove storage minecraft:loja_destrutivel_barril9_procuradores Items
data remove storage minecraft:loja_destrutivel_barril10_procuradores Items
data remove storage minecraft:loja_destrutivel_barril1_escondedores Items
data remove storage minecraft:loja_destrutivel_barril2_escondedores Items
data remove storage minecraft:loja_destrutivel_barril3_escondedores Items
data remove storage minecraft:loja_destrutivel_barril4_escondedores Items
data remove storage minecraft:loja_destrutivel_barril5_escondedores Items
data remove storage minecraft:loja_destrutivel_barril6_escondedores Items
data remove storage minecraft:loja_destrutivel_barril7_escondedores Items
data remove storage minecraft:loja_destrutivel_barril8_escondedores Items
data remove storage minecraft:loja_destrutivel_barril9_escondedores Items
data remove storage minecraft:loja_destrutivel_barril10_escondedores Items

data remove storage minecraft:husk slot
data remove storage minecraft:firework slot
data remove storage minecraft:last_death Pos
data remove storage minecraft:loja_procuradores Recipes
data remove storage minecraft:loja_escondedores Recipes
data remove storage minecraft:loja_destrutivel_procuradores Recipes
data remove storage minecraft:loja_destrutivel_escondedores Recipes
data remove storage minecraft:camouflage Name

data remove storage options hiders
data remove storage options seekers
data remove storage options ingame
data remove storage options multiplied_health
data remove storage minecraft:ingame_shop placements

data remove storage shop_dimension player

data remove storage border_saves current_border

data remove storage third_eye input
data remove storage third_eye output
data remove storage third_eye location

function hns:setup/clear_shop_saves with storage options

# reset attributes
execute as @a run function hns:functions/reset_attributes

bossbar remove hns:timer

clear @a

effect clear @a

datapack disable "file/(v5.2) Projeto Esconde-Esconde 1.20.5 (24w13a)"
