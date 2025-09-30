execute store result score .start_x mining_area run data get entity @e[limit=1,sort=nearest,type=minecraft:block_display,tag=mining_area] Pos[0]
execute store result score .start_y mining_area run data get entity @e[limit=1,sort=nearest,type=minecraft:block_display,tag=mining_area] Pos[1]
execute store result score .start_z mining_area run data get entity @e[limit=1,sort=nearest,type=minecraft:block_display,tag=mining_area] Pos[2]

scoreboard players operation .end_x mining_area = .start_x mining_area
scoreboard players operation .end_y mining_area = .start_y mining_area
scoreboard players operation .end_z mining_area = .start_z mining_area

scoreboard players set .1 mining_area 1
scoreboard players operation .end_x mining_area -= .1 mining_area
scoreboard players operation .end_y mining_area -= .1 mining_area
scoreboard players operation .end_z mining_area -= .1 mining_area
scoreboard players reset .1 mining_area

execute store result score .end_x mining_area run scoreboard players operation .end_x mining_area += .size_x mining_area
execute store result score .end_y mining_area run scoreboard players operation .end_y mining_area += .size_y mining_area
execute store result score .end_z mining_area run scoreboard players operation .end_z mining_area += .size_z mining_area

execute store result storage mining_area start_x int 1.0 run scoreboard players get .start_x mining_area
execute store result storage mining_area start_y int 1.0 run scoreboard players get .start_y mining_area
execute store result storage mining_area start_z int 1.0 run scoreboard players get .start_z mining_area

execute store result storage mining_area end_x int 1.0 run scoreboard players get .end_x mining_area
execute store result storage mining_area end_y int 1.0 run scoreboard players get .end_y mining_area
execute store result storage mining_area end_z int 1.0 run scoreboard players get .end_z mining_area

function coop_builders:mining_area/setup/replace_blocks with storage mining_area
