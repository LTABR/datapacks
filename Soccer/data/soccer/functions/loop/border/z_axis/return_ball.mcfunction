execute if score .foul options matches 1 store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[0] double 1.0012 run scoreboard players get .first_corner x_axis
execute if score .foul options matches 2 store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[0] double 1.0012 run scoreboard players get .second_corner x_axis
