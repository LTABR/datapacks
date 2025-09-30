execute as @s at @s run summon minecraft:villager ~ ~-12 ~ {NoAI: true, Silent: true, Invulnerable: true, NoGravity: true, Tags: ["exemplo_escondedor"], VillagerData: {profession: "minecraft:weaponsmith", level: true, type: "minecraft:plains"}}
execute as @s at @s run summon minecraft:villager ~ ~ ~ {NoAI: true, Silent: true, Invulnerable: true, NoGravity: true, Tags: ["exemplo_procurador"], VillagerData: {profession: "minecraft:armorer", level: true, type: "minecraft:plains"}}

execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-1 ~ {NoGravity: true, Tags: ["container1a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-2 ~ {NoGravity: true, Tags: ["container2a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-3 ~ {NoGravity: true, Tags: ["container3a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-4 ~ {NoGravity: true, Tags: ["container4a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-5 ~ {NoGravity: true, Tags: ["container5a", "container_a", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-6 ~ {NoGravity: true, Tags: ["container1b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-7 ~ {NoGravity: true, Tags: ["container2b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-8 ~ {NoGravity: true, Tags: ["container3b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-9 ~ {NoGravity: true, Tags: ["container4b", "container_b", "container"]}
execute as @s[tag=Admin] at @s run summon minecraft:block_display ~ ~-10 ~ {NoGravity: true, Tags: ["container5b", "container_b", "container"]}

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

scoreboard objectives remove containers

data modify storage minecraft:ingame_shop placements.dimension set from entity @s Dimension

execute as @e[type=minecraft:block_display,tag=container_a] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:red_shulker_box[facing=south]{lock:{components:{"minecraft:custom_data":{lock:1}}}} keep
execute as @e[type=minecraft:block_display,tag=container_b] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:lime_shulker_box[facing=north]{lock:{components:{"minecraft:custom_data":{lock:1}}}} keep

execute as @e[type=minecraft:block_display,tag=container1a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril1_procuradores Items
execute as @e[type=minecraft:block_display,tag=container2a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril2_procuradores Items
execute as @e[type=minecraft:block_display,tag=container3a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril3_procuradores Items
execute as @e[type=minecraft:block_display,tag=container4a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril4_procuradores Items
execute as @e[type=minecraft:block_display,tag=container5a] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril5_procuradores Items

execute as @e[type=minecraft:block_display,tag=container1b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril1_escondedores Items
execute as @e[type=minecraft:block_display,tag=container2b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril2_escondedores Items
execute as @e[type=minecraft:block_display,tag=container3b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril3_escondedores Items
execute as @e[type=minecraft:block_display,tag=container4b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril4_escondedores Items
execute as @e[type=minecraft:block_display,tag=container5b] at @s run data modify block ~ ~ ~ Items set from storage minecraft:loja_barril5_escondedores Items

item replace entity @s[tag=Admin] weapon.offhand with netherite_ingot[minecraft:custom_data={lock:1},minecraft:item_name=[{"text":"0","color":"black","obfuscated":true},{"text":"Chave","color":"white","italic":false,"underlined":true,"obfuscated":false},{"text":"1","obfuscated":true}],minecraft:custom_name=[{"text":"0","color":"black","obfuscated":true},{"text":"Chave","color":"white","italic":false,"underlined":true,"obfuscated":false},{"text":"1","obfuscated":true}]] 1

gamemode creative @s[tag=Admin]

kill @e[type=minecraft:block_display,tag=container]

$execute in $(dimension) run function hns:setup/shop/loop with storage minecraft:ingame_shop placements
