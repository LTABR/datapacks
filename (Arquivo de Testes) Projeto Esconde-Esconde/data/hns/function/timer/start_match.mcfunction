scoreboard players operation .Minutos Cronometro = .Minutos Opcoes
scoreboard players set .Segundos Cronometro 1

scoreboard players set .60 Cronometro 60
scoreboard players operation .total_time Cronometro = .Minutos Cronometro
scoreboard players operation .total_time Cronometro *= .60 Cronometro
execute store result bossbar hns:timer max run scoreboard players operation .total_time Cronometro += .Segundos Cronometro
scoreboard players reset .60 Cronometro

scoreboard objectives add seeker_shop dummy

execute as @e[type=minecraft:text_display,tag=spawnprocuradores] at @s run spawnpoint @a[team=Procuradores] ~ ~ ~

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay sidebar.team.red Abates

schedule clear hns:timer/hiding_second

scoreboard players reset @a[team=Escondedores] crossbow_bait
scoreboard players reset @a[team=Escondedores] Mortes
scoreboard players set .hiding Opcoes 0
schedule function hns:timer/second 30t

function hns:loop/firework_spark

bossbar set hns:timer color green

title @a[team=Escondedores] title {"selector":"@a[team=Procuradores]","color":"gold","bold":true,"italic":true,"underlined":true}
title @a[team=Escondedores] subtitle {"text":"Está a solta!","color":"white","bold":false,"italic":false,"underlined":false}
execute if score .seekers Opcoes matches 2.. run title @a[team=Escondedores] title [{"text":"Os ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Procuradores","color":"dark_red","bold":true,"italic":true,"underlined":true}]
execute if score .seekers Opcoes matches 2.. run title @a[team=Escondedores] subtitle {"text":" estão a solta!","color":"white","bold":false,"italic":false,"underlined":false}
execute as @a[team=Escondedores] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1
execute as @a[team=Procuradores] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 2
schedule function hns:functions/teleport_seeker_to_spawn 10t
tag @a[team=Procuradores,tag=using_shop] remove using_shop

clear @a[team=Escondedores] minecraft:ender_pearl[custom_data={teleportador:1b}]
clear @a[team=Procuradores] emerald[minecraft:custom_data={hiding_shop:1b}]
execute as @a[gamemode=!spectator,team=Procuradores] at @s if score .portable_shops Opcoes matches 1 unless data entity @s Inventory[{id:"minecraft:emerald"}] run give @s minecraft:emerald[minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers"]},minecraft:attribute_modifiers=[{display: {type: "default"}, type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"1",slot:"mainhand"},{display: {type: "default"}, type:"jump_strength",amount:-1,operation:"add_multiplied_base",id:"2",slot:"mainhand"},{display: {type: "default"}, type:"movement_speed",amount:-1,operation:"add_multiplied_base",id:"3",slot:"mainhand"}],minecraft:consumable={},minecraft:item_name={"text":"Abrir Loja","color":"gold","bold":true,"italic":true,"underlined":true},lore=[[{"color":"gray","italic":false,"text":"Segure "},{"color":"white","italic":false,"keybind":"key.use","underlined":true},{"color":"gray","italic":false,"text":" Com Este Item"}],{"color":"gray","italic":false,"text":"em Mãos Para Abrir a Loja."}],minecraft:custom_data={shop:1}]
kill @e[type=arrow]

kill @e[type=minecraft:villager,tag=shop]
kill @e[type=minecraft:witch,name="-Loja-"]
execute as @e[type=minecraft:villager,tag=shop] at @s run tp @s ~ ~-100 ~
clear @a[team=Procuradores] minecraft:tropical_fish_spawn_egg
clear @a[team=Escondedores] minecraft:witch_spawn_egg
execute as @a[team=Procuradores] unless data entity @s {Inventory: [{id: "minecraft:tropical_fish_spawn_egg"}]} run scoreboard players add @s MorteVillager 1
execute as @a[team=Escondedores] unless data entity @s {Inventory: [{id: "minecraft:witch_spawn_egg"}]} run scoreboard players add @s MorteVillager 1
execute as @a at @s if score .portable_shops Opcoes matches 0 run function hns:refill/shop

advancement revoke @a[team=Escondedores,advancements={hns:hider_teamkill=true}] only hns:hider_teamkill

execute if score .start_invisible Opcoes matches 1 run effect clear @a invisibility

scoreboard players operation @a[team=Escondedores] prioridadefogos = .recargafogos Opcoes
scoreboard players add @a[team=Escondedores] prioridadefogos 1
execute as @a[team=Escondedores] run function hns:refill/firework

execute if score .destructible_mode Opcoes matches 1 run gamemode survival @a[team=Procuradores]
