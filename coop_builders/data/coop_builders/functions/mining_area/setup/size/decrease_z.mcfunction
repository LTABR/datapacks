execute if score .size_z mining_area matches 2.. run scoreboard players remove .size_z mining_area 1

execute store result entity @e[limit=1,sort=nearest,type=minecraft:block_display,tag=mining_area] transformation.scale[2] float 1.0 run scoreboard players get .size_z mining_area
