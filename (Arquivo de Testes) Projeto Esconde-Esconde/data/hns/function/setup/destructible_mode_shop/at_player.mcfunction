execute as @s at @s run summon minecraft:villager ~ ~-22 ~ {NoAI: 1, Silent: 1, Invulnerable: 1, NoGravity: 1, Tags: ["exemplo_escondedor"], VillagerData: {profession: "minecraft:weaponsmith", level: 1, type: "minecraft:plains"}}
execute as @s at @s run summon minecraft:villager ~ ~ ~ {NoAI: 1, Silent: 1, Invulnerable: 1, NoGravity: 1, Tags: ["exemplo_procurador"], VillagerData: {profession: "minecraft:armorer", level: 1, type: "minecraft:plains"}}

execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-1 ~ {Silent:1b,NoGravity: 1, Tags: ["container1a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-2 ~ {Silent:1b,NoGravity: 1, Tags: ["container2a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-3 ~ {Silent:1b,NoGravity: 1, Tags: ["container3a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-4 ~ {Silent:1b,NoGravity: 1, Tags: ["container4a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-5 ~ {Silent:1b,NoGravity: 1, Tags: ["container5a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-6 ~ {Silent:1b,NoGravity: 1, Tags: ["container6a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-7 ~ {Silent:1b,NoGravity: 1, Tags: ["container7a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-8 ~ {Silent:1b,NoGravity: 1, Tags: ["container8a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-9 ~ {Silent:1b,NoGravity: 1, Tags: ["container9a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-10 ~ {Silent:1b,NoGravity: 1, Tags: ["container10a", "container_a", "container"]}

execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-11 ~ {Silent:1b,NoGravity: 1, Tags: ["container1b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-12 ~ {Silent:1b,NoGravity: 1, Tags: ["container2b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-13 ~ {Silent:1b,NoGravity: 1, Tags: ["container3b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-14 ~ {Silent:1b,NoGravity: 1, Tags: ["container4b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-15 ~ {Silent:1b,NoGravity: 1, Tags: ["container5b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-16 ~ {Silent:1b,NoGravity: 1, Tags: ["container6b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-17 ~ {Silent:1b,NoGravity: 1, Tags: ["container7b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-18 ~ {Silent:1b,NoGravity: 1, Tags: ["container8b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-19 ~ {Silent:1b,NoGravity: 1, Tags: ["container9b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-20 ~ {Silent:1b,NoGravity: 1, Tags: ["container10b", "container_b", "container"]}

data remove storage minecraft:ingame_shop placements
scoreboard objectives add containers dummy

execute store result score .container1a_x containers run data get entity @e[type=block_display,limit=1,tag=container1a] Pos[0]
execute store result score .container1a_y containers run data get entity @e[type=block_display,limit=1,tag=container1a] Pos[1]
execute store result score .container1a_z containers run data get entity @e[type=block_display,limit=1,tag=container1a] Pos[2]

execute store result score .container2a_x containers run data get entity @e[type=block_display,limit=1,tag=container2a] Pos[0]
execute store result score .container2a_y containers run data get entity @e[type=block_display,limit=1,tag=container2a] Pos[1]
execute store result score .container2a_z containers run data get entity @e[type=block_display,limit=1,tag=container2a] Pos[2]

execute store result score .container3a_x containers run data get entity @e[type=block_display,limit=1,tag=container3a] Pos[0]
execute store result score .container3a_y containers run data get entity @e[type=block_display,limit=1,tag=container3a] Pos[1]
execute store result score .container3a_z containers run data get entity @e[type=block_display,limit=1,tag=container3a] Pos[2]

execute store result score .container4a_x containers run data get entity @e[type=block_display,limit=1,tag=container4a] Pos[0]
execute store result score .container4a_y containers run data get entity @e[type=block_display,limit=1,tag=container4a] Pos[1]
execute store result score .container4a_z containers run data get entity @e[type=block_display,limit=1,tag=container4a] Pos[2]

execute store result score .container5a_x containers run data get entity @e[type=block_display,limit=1,tag=container5a] Pos[0]
execute store result score .container5a_y containers run data get entity @e[type=block_display,limit=1,tag=container5a] Pos[1]
execute store result score .container5a_z containers run data get entity @e[type=block_display,limit=1,tag=container5a] Pos[2]

execute store result score .container6a_x containers run data get entity @e[type=block_display,limit=1,tag=container6a] Pos[0]
execute store result score .container6a_y containers run data get entity @e[type=block_display,limit=1,tag=container6a] Pos[1]
execute store result score .container6a_z containers run data get entity @e[type=block_display,limit=1,tag=container6a] Pos[2]

execute store result score .container7a_x containers run data get entity @e[type=block_display,limit=1,tag=container7a] Pos[0]
execute store result score .container7a_y containers run data get entity @e[type=block_display,limit=1,tag=container7a] Pos[1]
execute store result score .container7a_z containers run data get entity @e[type=block_display,limit=1,tag=container7a] Pos[2]

execute store result score .container8a_x containers run data get entity @e[type=block_display,limit=1,tag=container8a] Pos[0]
execute store result score .container8a_y containers run data get entity @e[type=block_display,limit=1,tag=container8a] Pos[1]
execute store result score .container8a_z containers run data get entity @e[type=block_display,limit=1,tag=container8a] Pos[2]

execute store result score .container9a_x containers run data get entity @e[type=block_display,limit=1,tag=container9a] Pos[0]
execute store result score .container9a_y containers run data get entity @e[type=block_display,limit=1,tag=container9a] Pos[1]
execute store result score .container9a_z containers run data get entity @e[type=block_display,limit=1,tag=container9a] Pos[2]

execute store result score .container10a_x containers run data get entity @e[type=block_display,limit=1,tag=container10a] Pos[0]
execute store result score .container10a_y containers run data get entity @e[type=block_display,limit=1,tag=container10a] Pos[1]
execute store result score .container10a_z containers run data get entity @e[type=block_display,limit=1,tag=container10a] Pos[2]

execute store result score .container1b_x containers run data get entity @e[type=block_display,limit=1,tag=container1b] Pos[0]
execute store result score .container1b_y containers run data get entity @e[type=block_display,limit=1,tag=container1b] Pos[1]
execute store result score .container1b_z containers run data get entity @e[type=block_display,limit=1,tag=container1b] Pos[2]

execute store result score .container2b_x containers run data get entity @e[type=block_display,limit=1,tag=container2b] Pos[0]
execute store result score .container2b_y containers run data get entity @e[type=block_display,limit=1,tag=container2b] Pos[1]
execute store result score .container2b_z containers run data get entity @e[type=block_display,limit=1,tag=container2b] Pos[2]

execute store result score .container3b_x containers run data get entity @e[type=block_display,limit=1,tag=container3b] Pos[0]
execute store result score .container3b_y containers run data get entity @e[type=block_display,limit=1,tag=container3b] Pos[1]
execute store result score .container3b_z containers run data get entity @e[type=block_display,limit=1,tag=container3b] Pos[2]

execute store result score .container4b_x containers run data get entity @e[type=block_display,limit=1,tag=container4b] Pos[0]
execute store result score .container4b_y containers run data get entity @e[type=block_display,limit=1,tag=container4b] Pos[1]
execute store result score .container4b_z containers run data get entity @e[type=block_display,limit=1,tag=container4b] Pos[2]

execute store result score .container5b_x containers run data get entity @e[type=block_display,limit=1,tag=container5b] Pos[0]
execute store result score .container5b_y containers run data get entity @e[type=block_display,limit=1,tag=container5b] Pos[1]
execute store result score .container5b_z containers run data get entity @e[type=block_display,limit=1,tag=container5b] Pos[2]

execute store result score .container6b_x containers run data get entity @e[type=block_display,limit=1,tag=container6b] Pos[0]
execute store result score .container6b_y containers run data get entity @e[type=block_display,limit=1,tag=container6b] Pos[1]
execute store result score .container6b_z containers run data get entity @e[type=block_display,limit=1,tag=container6b] Pos[2]

execute store result score .container7b_x containers run data get entity @e[type=block_display,limit=1,tag=container7b] Pos[0]
execute store result score .container7b_y containers run data get entity @e[type=block_display,limit=1,tag=container7b] Pos[1]
execute store result score .container7b_z containers run data get entity @e[type=block_display,limit=1,tag=container7b] Pos[2]

execute store result score .container8b_x containers run data get entity @e[type=block_display,limit=1,tag=container8b] Pos[0]
execute store result score .container8b_y containers run data get entity @e[type=block_display,limit=1,tag=container8b] Pos[1]
execute store result score .container8b_z containers run data get entity @e[type=block_display,limit=1,tag=container8b] Pos[2]

execute store result score .container9b_x containers run data get entity @e[type=block_display,limit=1,tag=container9b] Pos[0]
execute store result score .container9b_y containers run data get entity @e[type=block_display,limit=1,tag=container9b] Pos[1]
execute store result score .container9b_z containers run data get entity @e[type=block_display,limit=1,tag=container9b] Pos[2]

execute store result score .container10b_x containers run data get entity @e[type=block_display,limit=1,tag=container10b] Pos[0]
execute store result score .container10b_y containers run data get entity @e[type=block_display,limit=1,tag=container10b] Pos[1]
execute store result score .container10b_z containers run data get entity @e[type=block_display,limit=1,tag=container10b] Pos[2]

execute store result storage minecraft:ingame_shop placements.1ax int 1.0 run scoreboard players get .container1a_x containers
execute store result storage minecraft:ingame_shop placements.1ay int 1.0 run scoreboard players get .container1a_y containers
execute store result storage minecraft:ingame_shop placements.1az int 1.0 run scoreboard players get .container1a_z containers

execute store result storage minecraft:ingame_shop placements.2ax int 1.0 run scoreboard players get .container2a_x containers
execute store result storage minecraft:ingame_shop placements.2ay int 1.0 run scoreboard players get .container2a_y containers
execute store result storage minecraft:ingame_shop placements.2az int 1.0 run scoreboard players get .container2a_z containers

execute store result storage minecraft:ingame_shop placements.3ax int 1.0 run scoreboard players get .container3a_x containers
execute store result storage minecraft:ingame_shop placements.3ay int 1.0 run scoreboard players get .container3a_y containers
execute store result storage minecraft:ingame_shop placements.3az int 1.0 run scoreboard players get .container3a_z containers

execute store result storage minecraft:ingame_shop placements.4ax int 1.0 run scoreboard players get .container4a_x containers
execute store result storage minecraft:ingame_shop placements.4ay int 1.0 run scoreboard players get .container4a_y containers
execute store result storage minecraft:ingame_shop placements.4az int 1.0 run scoreboard players get .container4a_z containers

execute store result storage minecraft:ingame_shop placements.5ax int 1.0 run scoreboard players get .container5a_x containers
execute store result storage minecraft:ingame_shop placements.5ay int 1.0 run scoreboard players get .container5a_y containers
execute store result storage minecraft:ingame_shop placements.5az int 1.0 run scoreboard players get .container5a_z containers

execute store result storage minecraft:ingame_shop placements.6ax int 1.0 run scoreboard players get .container6a_x containers
execute store result storage minecraft:ingame_shop placements.6ay int 1.0 run scoreboard players get .container6a_y containers
execute store result storage minecraft:ingame_shop placements.6az int 1.0 run scoreboard players get .container6a_z containers

execute store result storage minecraft:ingame_shop placements.7ax int 1.0 run scoreboard players get .container7a_x containers
execute store result storage minecraft:ingame_shop placements.7ay int 1.0 run scoreboard players get .container7a_y containers
execute store result storage minecraft:ingame_shop placements.7az int 1.0 run scoreboard players get .container7a_z containers

execute store result storage minecraft:ingame_shop placements.8ax int 1.0 run scoreboard players get .container8a_x containers
execute store result storage minecraft:ingame_shop placements.8ay int 1.0 run scoreboard players get .container8a_y containers
execute store result storage minecraft:ingame_shop placements.8az int 1.0 run scoreboard players get .container8a_z containers

execute store result storage minecraft:ingame_shop placements.9ax int 1.0 run scoreboard players get .container9a_x containers
execute store result storage minecraft:ingame_shop placements.9ay int 1.0 run scoreboard players get .container9a_y containers
execute store result storage minecraft:ingame_shop placements.9az int 1.0 run scoreboard players get .container9a_z containers

execute store result storage minecraft:ingame_shop placements.10ax int 1.0 run scoreboard players get .container10a_x containers
execute store result storage minecraft:ingame_shop placements.10ay int 1.0 run scoreboard players get .container10a_y containers
execute store result storage minecraft:ingame_shop placements.10az int 1.0 run scoreboard players get .container10a_z containers

execute store result storage minecraft:ingame_shop placements.1bx int 1.0 run scoreboard players get .container1b_x containers
execute store result storage minecraft:ingame_shop placements.1by int 1.0 run scoreboard players get .container1b_y containers
execute store result storage minecraft:ingame_shop placements.1bz int 1.0 run scoreboard players get .container1b_z containers

execute store result storage minecraft:ingame_shop placements.2bx int 1.0 run scoreboard players get .container2b_x containers
execute store result storage minecraft:ingame_shop placements.2by int 1.0 run scoreboard players get .container2b_y containers
execute store result storage minecraft:ingame_shop placements.2bz int 1.0 run scoreboard players get .container2b_z containers

execute store result storage minecraft:ingame_shop placements.3bx int 1.0 run scoreboard players get .container3b_x containers
execute store result storage minecraft:ingame_shop placements.3by int 1.0 run scoreboard players get .container3b_y containers
execute store result storage minecraft:ingame_shop placements.3bz int 1.0 run scoreboard players get .container3b_z containers

execute store result storage minecraft:ingame_shop placements.4bx int 1.0 run scoreboard players get .container4b_x containers
execute store result storage minecraft:ingame_shop placements.4by int 1.0 run scoreboard players get .container4b_y containers
execute store result storage minecraft:ingame_shop placements.4bz int 1.0 run scoreboard players get .container4b_z containers

execute store result storage minecraft:ingame_shop placements.5bx int 1.0 run scoreboard players get .container5b_x containers
execute store result storage minecraft:ingame_shop placements.5by int 1.0 run scoreboard players get .container5b_y containers
execute store result storage minecraft:ingame_shop placements.5bz int 1.0 run scoreboard players get .container5b_z containers

execute store result storage minecraft:ingame_shop placements.6bx int 1.0 run scoreboard players get .container6b_x containers
execute store result storage minecraft:ingame_shop placements.6by int 1.0 run scoreboard players get .container6b_y containers
execute store result storage minecraft:ingame_shop placements.6bz int 1.0 run scoreboard players get .container6b_z containers

execute store result storage minecraft:ingame_shop placements.7bx int 1.0 run scoreboard players get .container7b_x containers
execute store result storage minecraft:ingame_shop placements.7by int 1.0 run scoreboard players get .container7b_y containers
execute store result storage minecraft:ingame_shop placements.7bz int 1.0 run scoreboard players get .container7b_z containers

execute store result storage minecraft:ingame_shop placements.8bx int 1.0 run scoreboard players get .container8b_x containers
execute store result storage minecraft:ingame_shop placements.8by int 1.0 run scoreboard players get .container8b_y containers
execute store result storage minecraft:ingame_shop placements.8bz int 1.0 run scoreboard players get .container8b_z containers

execute store result storage minecraft:ingame_shop placements.9bx int 1.0 run scoreboard players get .container9b_x containers
execute store result storage minecraft:ingame_shop placements.9by int 1.0 run scoreboard players get .container9b_y containers
execute store result storage minecraft:ingame_shop placements.9bz int 1.0 run scoreboard players get .container9b_z containers

execute store result storage minecraft:ingame_shop placements.10bx int 1.0 run scoreboard players get .container10b_x containers
execute store result storage minecraft:ingame_shop placements.10by int 1.0 run scoreboard players get .container10b_y containers
execute store result storage minecraft:ingame_shop placements.10bz int 1.0 run scoreboard players get .container10b_z containers

scoreboard objectives remove containers

data modify storage minecraft:ingame_shop placements.dimension set from entity @s Dimension

execute as @e[type=minecraft:block_display,tag=container_a] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:red_shulker_box[facing=south]{lock:{components:{"minecraft:custom_data":{lock:1}}}} keep
execute as @e[type=minecraft:block_display,tag=container_b] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:lime_shulker_box[facing=north]{lock:{components:{"minecraft:custom_data":{lock:1}}}} keep

execute as @e[type=minecraft:block_display,tag=container1a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril1_procuradores Items
execute as @e[type=minecraft:block_display,tag=container2a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril2_procuradores Items
execute as @e[type=minecraft:block_display,tag=container3a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril3_procuradores Items
execute as @e[type=minecraft:block_display,tag=container4a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril4_procuradores Items
execute as @e[type=minecraft:block_display,tag=container5a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril5_procuradores Items
execute as @e[type=minecraft:block_display,tag=container6a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril6_procuradores Items
execute as @e[type=minecraft:block_display,tag=container7a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril7_procuradores Items
execute as @e[type=minecraft:block_display,tag=container8a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril8_procuradores Items
execute as @e[type=minecraft:block_display,tag=container9a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril9_procuradores Items
execute as @e[type=minecraft:block_display,tag=container10a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril10_procuradores Items

execute as @e[type=minecraft:block_display,tag=container1b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril1_escondedores Items
execute as @e[type=minecraft:block_display,tag=container2b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril2_escondedores Items
execute as @e[type=minecraft:block_display,tag=container3b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril3_escondedores Items
execute as @e[type=minecraft:block_display,tag=container4b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril4_escondedores Items
execute as @e[type=minecraft:block_display,tag=container5b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril5_escondedores Items
execute as @e[type=minecraft:block_display,tag=container6b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril6_escondedores Items
execute as @e[type=minecraft:block_display,tag=container7b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril7_escondedores Items
execute as @e[type=minecraft:block_display,tag=container8b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril8_escondedores Items
execute as @e[type=minecraft:block_display,tag=container9b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril9_escondedores Items
execute as @e[type=minecraft:block_display,tag=container10b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_destrutivel_barril10_escondedores Items

item replace entity @s[tag=Admin] weapon.offhand with netherite_ingot[minecraft:custom_data={lock:1},minecraft:item_name=[{"text":"0","color":"black","obfuscated":true},{"text":"Chave","color":"white","italic":false,"underlined":true,"obfuscated":false},{"text":"1","obfuscated":true}],minecraft:custom_name=[{"text":"0","color":"black","obfuscated":true},{"text":"Chave","color":"white","italic":false,"underlined":true,"obfuscated":false},{"text":"1","obfuscated":true}]] 1

gamemode creative @s[tag=Admin]

kill @e[type=minecraft:block_display,tag=container]

$execute in $(dimension) run function hns:setup/destructible_mode_shop/loop with storage minecraft:ingame_shop placements
