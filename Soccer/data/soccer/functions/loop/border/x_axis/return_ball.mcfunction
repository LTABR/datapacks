execute if score .foul options matches 3 store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[2] double 0.9965 run scoreboard players get .first_corner z_axis
execute if score .foul options matches 4 store result entity @e[type=minecraft:cat,limit=1,tag=ball] Pos[2] double 0.9965 run scoreboard players get .second_corner z_axis
