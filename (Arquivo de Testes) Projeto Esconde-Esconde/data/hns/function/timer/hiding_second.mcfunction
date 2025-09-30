schedule function hns:timer/hiding_second 1s
# update scores

execute if score .last_standing Opcoes matches 1 run function hns:timer/check_last_standing
scoreboard players remove .Segundos Cronometro 1
execute if score .Segundos Cronometro matches 0 if score .Minutos Cronometro matches ..0 run return run function hns:timer/hiding_minute
execute if score .Segundos Cronometro matches ..0 run function hns:timer/hiding_minute

execute if score .last_standing Opcoes matches 0 unless entity @a[team=Escondedores,gamemode=!spectator] run return run function hns:timer/end/seekers_win

# update entities
execute as @e[type=minecraft:husk,nbt={IsBaby:1b}] run function hns:functions/on_baby_husk
execute as @e[type=minecraft:villager,name="-Loja-"] unless data entity @s Silent run kill @s

# warnings
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 30 run tellraw @a [{"text":"30 segundos restantes para se esconder!","color":"white"}]
execute if score .Minutos Cronometro matches 0 if score .Segundos Cronometro matches 1..5 run tellraw @a [{"score":{"name":".Segundos","objective":"Cronometro"},"color":"white","bold":true}]

# spawn rabbit slowness area
execute as @e[type=minecraft:rabbit,name="Lentidão em Área"] at @s run summon minecraft:area_effect_cloud ~ ~0.25 ~ {custom_particle:{type:"firework"},ReapplicationDelay:0,Radius:2.25f,RadiusOnUse:0f,Duration:20,DurationOnUse:0,Age:0,WaitTime:0,Color:16711680,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:2b,duration:60,show_particles:1b,show_icon:1b}]}}

# speed horn loop
execute as @a[scores={speed_horn=1..}] at @s run function hns:gadgets/speed_horn/cast
clear @a minecraft:saddle
clear @a minecraft:bamboo_raft

# refill
execute as @a[scores={MorteVillager=1..},team=Escondedores] if score .portable_shops Opcoes matches 0 run function hns:refill/shop
clear @a[team=Procuradores] minecraft:tropical_fish_spawn_egg

# check rejoined players
execute if entity @a[scores={saiu=1..},team=Procuradores] run function hns:functions/teleport_rejoined_players
scoreboard players reset @a[scores={saiu=1..}] saiu

execute as @a[team=Escondedores] if score @s diamantes < .diamantesE Opcoes run function hns:give/diamonds
execute as @a[team=Procuradores] if score @s diamantes < .diamantesP Opcoes run function hns:give/diamonds

# game mode
execute as @a[team=!Escondedores] if entity @s[team=!Procuradores] run gamemode spectator @s

# apply effects & attributes
execute as @a[team=Procuradores] run function hns:functions/set_seekers_attributes with storage minecraft:options seekers
execute as @a[team=Escondedores] run function hns:functions/set_hiders_attributes with storage minecraft:options hiders
execute as @a[team=Procuradores] run attribute @s block_interaction_range base set 0
execute as @a if score .VisaoNoturna Opcoes matches 1 run effect give @s minecraft:night_vision infinite 255 true
execute if score .fall_damage Opcoes matches 0 run effect give @a[team=Escondedores] minecraft:regeneration infinite 2 true
execute if score .fall_damage Opcoes matches 1 run effect give @a[team=Escondedores] minecraft:regeneration infinite 3 true

execute store result score .seekers_too_small Opcoes run data get storage options seekers.scale 100
execute store result score .hiders_too_small Opcoes run data get storage options hiders.scale 100

function hns:give/apply_ingame_attributes with storage options ingame
execute as @a[team=Procuradores,predicate=hns:in_shop,tag=using_shop] run attribute @s gravity base set 0

# seekers in shop
execute as @a[team=Procuradores,scores={MorteVillager=1..},tag=using_shop] at @s run function hns:functions/return_seeker_to_lobby with storage options ingame

# seekers outside lobby
execute as @a[team=Procuradores,predicate=!hns:in_shop] in hns:shop run tp @s 420 69 420

# update bossbar
execute unless score .timer_end Opcoes matches 1 run bossbar set hns:timer players @a

scoreboard players set .60 Cronometro 60
scoreboard players operation .total_time Cronometro = .Minutos Cronometro
scoreboard players operation .total_time Cronometro *= .60 Cronometro
execute store result bossbar hns:timer value run scoreboard players operation .total_time Cronometro += .Segundos Cronometro
scoreboard players reset .60 Cronometro

bossbar set hns:timer name [{"text":"Tempo ","color":"white"},{"text":"Para se Esconder","underlined":true},{"text":": "},{"score":{"name":".Minutos","objective":"Cronometro"},"color":"aqua","underlined":false},{"text":" minuto(s) e ","color":"white"},{"score":{"name":".Segundos","objective":"Cronometro"},"color":"aqua"},{"text":" segundo(s).","color":"white"}]
