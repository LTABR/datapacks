# check if last standing hider won (if activated)
execute if score .last_standing Opcoes matches 1 run function hns:timer/check_last_standing
execute if score .last_standing Opcoes matches 1 if score .timer_end Opcoes matches 1 run return 0

# check if seekers won
execute if score .last_standing Opcoes matches 0 unless entity @a[team=Escondedores,gamemode=!spectator] run return run function hns:timer/end/seekers_win

# check if seeker is offline
execute unless entity @a[team=Procuradores] run scoreboard players set .error Opcoes 2
execute unless entity @a[team=Procuradores] run return run function hns:missing_error

# check increased time
execute as @a[scores={kill_increase_time=1..}] if score .timePerKill Opcoes matches 1.. run function hns:functions/kill_increase_time

# loop
schedule function hns:timer/second 1s
execute if score .Segundos Cronometro matches 1.. run scoreboard players remove .Segundos Cronometro 1

# reveal hiders
execute if score .revelarPosicaoM Opcoes = .Minutos Cronometro if score .revelarPosicaoS Opcoes = .Segundos Cronometro run tellraw @a [{"text":"Revelando Posições Dos Escondedores!","color":"red","bold":true,"underlined":true}]
execute if score .revelarPosicaoM Opcoes = .Minutos Cronometro if score .revelarPosicaoS Opcoes = .Segundos Cronometro run effect give @a[team=Escondedores] minecraft:glowing infinite 255 true

# timer tellraw
scoreboard players set .60 Cronometro 60
scoreboard players operation .total_time Cronometro = .Minutos Cronometro
scoreboard players operation .total_time Cronometro *= .60 Cronometro
execute store result bossbar hns:timer value run scoreboard players operation .total_time Cronometro += .Segundos Cronometro
scoreboard players reset .60 Cronometro

bossbar set hns:timer players @a
bossbar set hns:timer name [{"text":"Tempo restante: ","color":"gray"},{"score":{"name":".Minutos","objective":"Cronometro"},"color":"gold"},{"text":" minuto(s) e ","color":"white"},{"score":{"name":".Segundos","objective":"Cronometro"},"color":"gold"},{"text":" segundo(s).","color":"white"}]

execute if score .Segundos Cronometro matches 0 run function hns:timer/minute
execute if score .timer_end Opcoes matches 1 run return 0

# detect spectators & disconnected players
function hns:timer/check_disconnected

# apply effects & attributes
execute as @a if score .VisaoNoturna Opcoes matches 1 run effect give @s minecraft:night_vision infinite 255 true

execute as @a[team=Procuradores] run function hns:functions/set_seekers_attributes with storage minecraft:options seekers
execute as @a[team=Escondedores] run function hns:functions/set_hiders_attributes with storage minecraft:options hiders
function hns:give/apply_ingame_attributes with storage options ingame
function hns:functions/check_dimension with storage border_saves current_border

effect give @a minecraft:saturation infinite 255 true
execute if score .seekers_glow Opcoes matches 1 run effect give @a[team=Procuradores] minecraft:glowing infinite 255 true
team join Escondedores @e[type=minecraft:zombie_villager]

# warnings
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 30 run bossbar set hns:timer color red
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 30 run tellraw @a [{"text":"30 segundos","color":"red","bold":true,"underlined":true},{"text":" restantes!","color":"white","bold":false,"underlined":false}]
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 30 as @a[team=Escondedores] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.35 0

execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 1..5 run tellraw @a [{"score":{"name":".Segundos","objective":"Cronometro"},"color":"dark_red","bold":true},{"text":"..."}]
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 1..5 as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 0.35 0

# add to firework refill priority
execute as @a[team=Escondedores,scores={prioridadefogos=1..},predicate=!hns:has_fireworks] at @s run scoreboard players add @s prioridadefogos 1

# refill fireworks
execute as @a[team=Escondedores] at @s run scoreboard players operation .prioridadefogos prioridadefogos > @s prioridadefogos
execute as @a[team=Escondedores] at @s if score .prioridadefogos prioridadefogos > .recargafogos Opcoes run function hns:refill/firework

# refill husks
execute if score .recargahusk Opcoes matches 1.. as @a[team=Procuradores] run function hns:functions/husk_priorities

# check husk limit
execute store result score .husks Opcoes run execute if entity @e[type=husk]
execute if score .husks Opcoes matches 10.. run kill @e[type=husk,limit=1]

# apply data to baby entities
execute as @e[type=minecraft:husk,nbt={IsBaby:1b}] run function hns:functions/on_baby_husk
execute as @e[type=minecraft:villager,name="-Loja-"] unless data entity @s Silent run kill @s

# fishing bait preparation
execute as @e[type=minecraft:text_display,tag=isca] at @s unless entity @e[type=minecraft:fishing_bobber,distance=..1] run function hns:gadgets/firework_bait/summon

# restock shop
execute as @a[scores={MorteVillager=1..}] if score .portable_shops Opcoes matches 0 run function hns:refill/shop

# clear some items
clear @a minecraft:saddle
clear @a minecraft:bamboo_raft

# speed horn loop
execute as @a[scores={speed_horn=1..}] at @s run function hns:gadgets/speed_horn/cast

# add crossbow bait score
execute as @a[scores={crossbow_bait=1..}] run function hns:functions/crossbow_bait_score

# spawn rabbit slowness area
execute as @e[type=minecraft:rabbit,name="Lentidão em Área"] at @s run summon minecraft:area_effect_cloud ~ ~0.25 ~ {custom_particle:{type:"firework"},ReapplicationDelay:0,Radius:2.25f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Age:0,WaitTime:0,Color:16711680,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:60,show_particles:1b,show_icon:1b}]}}

# seeker sound
execute if score .seekers_sound Opcoes matches 1 at @a[team=Procuradores] run playsound minecraft:entity.warden.heartbeat player @a[team=!Procuradores] ~ ~ ~ 1 1

# check bat with no minecart
kill @e[type=bat,tag=morcego2,predicate=!hns:minecart_passenger]
