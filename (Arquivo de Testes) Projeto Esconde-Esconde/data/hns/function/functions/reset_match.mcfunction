# cleaning
schedule clear hns:loop/main_loop
schedule clear hns:timer/hiding_second
schedule clear hns:refill/firework
schedule clear hns:refill/husk
schedule clear hns:sorter/end_sorter
schedule clear hns:sorter/sorting
schedule clear hns:sorter/sort
schedule clear hns:timer/second
schedule clear hns:loop/firework_spark
schedule clear hns:give/diamonds
schedule clear hns:shop_dimension/loop
schedule clear hns:setup/barrier/loop/edit
schedule clear hns:timer/reveal_scores
schedule clear hns:functions/shared_lives/message_teams
schedule clear hns:gadgets/ninja_bomb/return
schedule clear hns:gadgets/surprise_cake/return
schedule clear hns:gadgets/surprise_cake/stun

effect clear @a
effect give @a minecraft:saturation 3 255 true

bossbar set hns:timer players

# reset attributes
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:attack_speed base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:attack_knockback base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:attack_damage base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:movement_speed base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:scale base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:block_interaction_range base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:entity_interaction_range base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:step_height base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:jump_strength base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:gravity base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:fall_damage_multiplier base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:safe_fall_distance base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:block_break_speed base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:sneaking_speed base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:mining_efficiency base reset
execute if score .start Opcoes matches 0 as @a run attribute @s minecraft:water_movement_efficiency base reset

execute as @a at @s run attribute @s minecraft:max_health base reset
execute if score .start Opcoes matches 0 as @a run damage @s 0.1 minecraft:bad_respawn_point

execute if score .start Opcoes matches 1 run schedule clear hns:loop/pvp/disable_pvp_loop
execute if score .sempvp Opcoes matches 1 if score .start Opcoes matches 0 run function hns:loop/pvp/disable_pvp_loop
execute if score .sempvp Opcoes matches 0 run team modify Escondedores friendlyFire true
execute if score .sempvp Opcoes matches 0 run team modify Procuradores friendlyFire true

execute if score .start Opcoes matches 0 run tp @a[predicate=hns:in_shop] @e[type=minecraft:text_display,tag=spawnescondedores,limit=1]
execute if score .start Opcoes matches 0 run clear @a[tag=!spectating]
gamemode adventure @a[tag=!spectating,tag=!Admin]
execute if score .start Opcoes matches 1 if score .destructible_mode Opcoes matches 1 run gamemode survival @a[tag=!spectating]
execute if score .start Opcoes matches 0 run item replace entity @a hotbar.0 with minecraft:cooked_beef[max_stack_size=99] 99
execute if score .start Opcoes matches 0 run item replace entity @a hotbar.8 with firework_rocket[minecraft:can_place_on={blocks:"#hns:all_blocks"}, max_stack_size= 99, minecraft:tooltip_display={hidden_components:["minecraft:can_place_on"]}, minecraft:fireworks= {flight_duration: 3b}] 99

execute if score .seekers_glow Opcoes matches 1 run effect give @a[team=Escondedores] minecraft:glowing 30 255 true
execute if score .seekers_glow Opcoes matches 1 run scoreboard players reset .seekers_glow Opcoes
team leave @a
team join moderador @a[tag=Admin]

# entities
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=minecraft:text_display,tag=isca] 
kill @e[type=spectral_arrow]
kill @e[type=minecraft:interaction,tag=unset]
kill @e[type=minecraft:interaction,tag=teleportador_ocupado]
kill @e[type=minecraft:interaction,tag=teleportador_vazio]
kill @e[type=interaction,tag=spawn_teleporter]
execute as @e[type=husk,team=Procuradores] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=minecraft:creeper,name="Terrorista"] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=minecraft:horse,name="Cavalo Corredor"] run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=minecraft:rabbit,name="Lentidão em Área"] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=bat,tag=morcego2] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=vex,team=Procuradores] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=iron_golem,tag=golem_guard] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[tag=minion] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=skeleton,tag=arrow_minion] at @s run data merge entity @s {NoAI: true, Silent: true}
execute as @e[type=spawner_minecart,tag=spawner] at @s run data merge entity @s {DisplayOffset:10,SpawnCount:0,SpawnRange:0,MaxNearbyEntities:0,Tags:["spawner"],DisplayState:{Name:"minecraft:lime_wool"}}
execute as @e[type=shulker,tag=shulker_crawl] at @s run function hns:functions/crawling/remove_shulker

execute as @e[type=minecraft:armor_stand] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:item_frame] run data merge entity @s {Invulnerable:false}
execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Invulnerable:false}

# options & scores
execute if score .start Opcoes matches 0 run gamerule disablePlayerMovementCheck true
execute if score .start Opcoes matches 0 run gamerule disableElytraMovementCheck true
execute if score .start Opcoes matches 0 run gamerule reducedDebugInfo false
execute if score .start Opcoes matches 0 run gamerule naturalRegeneration true
execute if score .start Opcoes matches 0 run gamerule announceAdvancements true
execute if score .start Opcoes matches 0 run gamerule spectatorsGenerateChunks false
execute if score .start Opcoes matches 0 if score .destructible_mode Opcoes matches 1 run gamerule tntExplodes false
execute if score .start Opcoes matches 0 if score .destructible_mode Opcoes matches 1 run gamerule doTileDrops false
execute if score .start Opcoes matches 0 if score .destructible_mode Opcoes matches 1 run gamerule mobGriefing false
execute if score .start Opcoes matches 0 if score .destructible_mode Opcoes matches 1 run gamerule projectilesCanBreakBlocks false
execute if score .start Opcoes matches 0 run gamerule mobGriefing false
execute if score .start Opcoes matches 0 run gamerule allowEnteringNetherUsingPortals true
execute if score .start Opcoes matches 0 run worldborder damage amount 0.2
execute if score .start Opcoes matches 0 run worldborder damage buffer 5
execute if score .start Opcoes matches 1 run worldborder damage amount 0
execute if score .start Opcoes matches 1 run worldborder damage buffer 0
execute if score .start Opcoes matches 1 run gamerule allowEnteringNetherUsingPortals false
execute if score .start Opcoes matches 1 run gamerule blockExplosionDropDecay false
execute if score .start Opcoes matches 1 run gamerule naturalRegeneration false
execute if score .start Opcoes matches 1 run gamerule announceAdvancements false
execute if score .start Opcoes matches 1 run gamerule spectatorsGenerateChunks true
execute if score .start Opcoes matches 1 if score .destructible_mode Opcoes matches 1 run gamerule tntExplodes true
execute if score .start Opcoes matches 1 if score .destructible_mode Opcoes matches 1 run gamerule doTileDrops true
execute if score .start Opcoes matches 1 if score .destructible_mode Opcoes matches 1 run gamerule mobGriefing true
execute if score .start Opcoes matches 1 if score .destructible_mode Opcoes matches 1 run gamerule projectilesCanBreakBlocks true
scoreboard objectives setdisplay sidebar pontosTotais
scoreboard objectives setdisplay below_name esmeraldas
scoreboard objectives remove seeker_shop

execute as @a if score .VisaoNoturna Opcoes matches 1 run effect give @s minecraft:night_vision infinite 255 true

# return disconnected hiders
execute if entity @a[scores={saiu=1..}] run function hns:functions/teleport_rejoined_players
scoreboard players reset @a[scores={saiu=1..}] saiu

execute if score .start Opcoes matches 1 run scoreboard players set Minutos Cronometro -1
execute if score .start Opcoes matches 1 if score .fall_damage Opcoes matches 1 run gamerule fallDamage true
execute if score .start Opcoes matches 1 if score .fall_damage Opcoes matches 0 run gamerule fallDamage false
execute if score .start Opcoes matches 1 if score .drowningdamage Opcoes matches 1 run gamerule drowningDamage true
execute if score .start Opcoes matches 1 if score .drowningdamage Opcoes matches 0 run gamerule drowningDamage false
execute if score .start Opcoes matches 1 run scoreboard players reset .timer_end
execute if score .start Opcoes matches 1 run scoreboard players reset * interact_villager
execute if score .start Opcoes matches 0 run scoreboard players reset .selected_seekers
execute if score .start Opcoes matches 0 run scoreboard players reset * rabbit_jump
execute if score .start Opcoes matches 0 run scoreboard players reset * rabbit_jump_cooldown
execute if score .start Opcoes matches 0 run scoreboard players reset @a Opcoes
execute if score .start Opcoes matches 0 run scoreboard players enable * Opcoes

execute if score .start Opcoes matches 0 run function hns:functions/clear_tags

function hns:functions/clear_scores

tag @a remove tp
tag @a remove trigger
tag @a remove feather
tag @a remove feather2

# admin items
execute if score .start Opcoes matches 0 run function hns:give/admin_book
execute if score .start Opcoes matches 1 run clear @a written_book
item replace entity @a[tag=Admin] armor.chest with minecraft:elytra[minecraft:unbreakable={}]

# trigger and tp player tags removal loop
execute if score .start Opcoes matches 0 run schedule clear hns:gadgets/teleporter_plate/remove_tag_loop
execute if score .start Opcoes matches 1 run function hns:gadgets/teleporter_plate/remove_tag_loop

# offer backup
execute if score .start Opcoes matches 0 if score .backup Opcoes matches 1 run tellraw @a[tag=Admin] {"text":"[Clique Para Carregar Backup]","color":"dark_aqua","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Carregar Backup.","color":"dark_aqua"}]},"click_event":{"action":"run_command","command":"/function hns:functions/backup/load_backup with storage border_saves backup_coordinates"}}

# end start
execute if score .start Opcoes matches 1 run scoreboard players set .start Opcoes 0
