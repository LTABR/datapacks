# action to players in spectator mode
tag @a[gamemode=spectator,tag=!spectating] add spectating
tag @a[gamemode=!spectator,tag=spectating] remove spectating
gamemode spectator @a[gamemode=!spectator,tag=spectating]

team leave @a
scoreboard players operation .seekersPlaceholder Opcoes = .seekers Opcoes
execute if score .seekersPlaceholder Opcoes matches 0 run scoreboard players set .seekers Opcoes 1
execute if score .seekersPlaceholder Opcoes matches 0 run scoreboard players set .seekersPlaceholder Opcoes 1

function hns:sorter/sort_seekers
execute if score .error Opcoes matches 6 run return 0
title @a times 20t 60t 20t

title @a title {"text":"Quem irá procurar será","color":"white"}
execute if score .seekers Opcoes matches 2.. run title @a title {"text":"Os Procuradores Serão:","color":"white"}
title @a subtitle {"selector":"@a[team=Procuradores]","color":"red","bold":true,"italic":true,"underlined":true}
execute if score .seekers Opcoes matches 2.. run tellraw @a [{"text":"Os "},{"text":"Procuradores","color":"dark_red","bold":true,"italic":true,"underlined":true},{"text":" São: "},{"selector":"@a[team=Procuradores]","bold":false,"italic":false,"underlined":false}]

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2

team join Escondedores @a[team=!Procuradores,gamemode=!spectator,tag=!spectating]

execute in hns:shop positioned 397 66 397 if loaded ~ ~ ~ if block ~ ~ ~ air run place template hns:lobby ~ ~ ~ none
execute if entity @a[scores={saiu=1..}] in hns:shop run worldborder damage amount 0
execute if entity @a[scores={saiu=1..}] in hns:shop run worldborder damage buffer 0
execute in hns:shop run tp @a[team=Procuradores] 420 69 420
execute in hns:shop run spawnpoint @a[team=Procuradores] 420 69 420

tp @a[team=Escondedores] @e[type=minecraft:text_display,limit=1,tag=spawnescondedores]
execute as @e[type=minecraft:text_display,tag=spawnescondedores] at @s run spawnpoint @a[team=Escondedores] ~ ~ ~

scoreboard players set @a[team=Escondedores] Pontos 0

execute if score .shared_lives Opcoes matches 1 run function hns:functions/shared_lives/set_teams
execute if score .shared_lives Opcoes matches 1 run schedule function hns:functions/shared_lives/message_teams 1s

schedule function hns:loop/main_loop 64t
schedule function hns:timer/hiding_second 3s

# set player_ids for teleporter plates
function hns:gadgets/teleporter_plate/set_player_ids

schedule clear hns:loop/disable_pvp_loop

execute if score .sempvp Opcoes matches 1 run team modify Escondedores friendlyFire false
execute if score .sempvp Opcoes matches 1 run team modify Procuradores friendlyFire false
execute if score .SegundosEspera Cronometro matches 60 run scoreboard players add .MinutosEspera Cronometro 1
execute if score .SegundosEspera Cronometro matches 60 run scoreboard players set .SegundosEspera Cronometro 0
scoreboard players operation .Minutos Cronometro = .MinutosEspera Opcoes
scoreboard players operation .Segundos Cronometro = .SegundosEspera Opcoes

scoreboard players set .60 Cronometro 60
scoreboard players operation .total_time Cronometro = .MinutosEspera Cronometro
scoreboard players operation .total_time Cronometro *= .60 Cronometro
execute store result bossbar hns:timer max run scoreboard players operation .total_time Cronometro += .SegundosEspera Cronometro
scoreboard players reset .60 Cronometro

effect give @a minecraft:saturation infinite 255 true

function hns:functions/clear_entities

# make entities unbreakable
execute as @e[type=minecraft:armor_stand] run data merge entity @s {Invulnerable:true}
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:true}
execute as @e[type=minecraft:item_frame] run data merge entity @s {Invulnerable:true}
execute as @e[type=minecraft:glow_item_frame] run data merge entity @s {Invulnerable:true}

execute if entity @a[team=sempvp] run scoreboard players set sempvp Opcoes 1
execute unless entity @a[team=sempvp] run scoreboard players set sempvp Opcoes 0

scoreboard players set @a rabbit_jump_cooldown 0

execute if score .start_invisible Opcoes matches 1 run effect give @a[team=Escondedores] invisibility infinite 255 true

execute if score .sempvp Opcoes matches 1 run team modify Escondedores friendlyFire false
execute if score .sempvp Opcoes matches 1 run team modify Procuradores friendlyFire false
execute if score .sempvp Opcoes matches 0 run team modify Escondedores friendlyFire true
execute if score .sempvp Opcoes matches 0 run team modify Procuradores friendlyFire true

scoreboard players reset * prioridadepe
scoreboard players reset * prioridadefogos
scoreboard players reset * prioridadehusk

scoreboard players reset * bell
scoreboard players reset * thrown
scoreboard players reset * speed_horn
scoreboard players reset * used_pearl

gamerule naturalRegeneration false
gamerule reducedDebugInfo true

scoreboard players set .hiding Opcoes 1
execute as @a[gamemode=!spectator] at @s run function hns:give/give_items

give @a[team=Procuradores] emerald[minecraft:custom_data={hiding_shop:1b},minecraft:consumable={consume_seconds:10000,animation:"brush",sound:"ui.button.click"},minecraft:item_name={"text":"Usar Loja","color":"gold","bold":true,"italic":false,"underlined":true},minecraft:lore=[[{"text":"Use ","color":"gray","italic":false},{"keybind":"key.use","color":"white","italic":false,"underlined":true},{"text":" Para Ir Até a Loja."}]]] 1

# calculate hiding time bossbar
bossbar set hns:timer color blue

scoreboard players set .60 Cronometro 60
scoreboard players operation .total_time Cronometro = .MinutosEspera Opcoes
scoreboard players operation .total_time Cronometro *= .60 Cronometro
execute store result bossbar hns:timer max run scoreboard players operation .total_time Cronometro += .SegundosEspera Opcoes
scoreboard players reset .60 Cronometro
