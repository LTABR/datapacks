scoreboard players add .size_y mining_area 1

execute store result entity @e[limit=1,sort=nearest,type=minecraft:block_display,tag=mining_area] transformation.scale[1] float 1.0 run scoreboard players get .size_y mining_area
