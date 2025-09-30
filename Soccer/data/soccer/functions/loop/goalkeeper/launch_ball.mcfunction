execute store result score .ball_pos_double x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[0] 1000
execute store result score .ball_y_pos_double x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[1] 1000
execute store result score .ball_pos_double z_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[2] 1000

tp @e[type=cat,limit=1,tag=ball] ^ ^ ^0.1

execute store result score .ball_pos_double2 x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[0] 1000
execute store result score .ball_y_pos_double2 x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[1] 1000
execute store result score .ball_pos_double2 z_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[2] 1000

execute store result entity @e[type=cat,limit=1,tag=ball] Motion[0] double 0.02 run scoreboard players operation .ball_pos_double2 x_axis -= .ball_pos_double x_axis
execute store result entity @e[type=cat,limit=1,tag=ball] Motion[1] double 0.001 run scoreboard players operation .ball_y_pos_double2 x_axis -= .ball_y_pos_double x_axis
execute store result entity @e[type=cat,limit=1,tag=ball] Motion[2] double 0.02 run scoreboard players operation .ball_pos_double2 z_axis -= .ball_pos_double z_axis

summon minecraft:interaction ~ ~ ~ {height:0.5,width:1.0,Tags:["kick"]}
ride @e[type=interaction,tag=kick,limit=1] mount @e[type=cat,limit=1,tag=ball]
tag @e[type=interaction,tag=hitbox] add launched

scoreboard players reset * grab
kill @e[type=interaction,tag=launched]
schedule clear soccer:loop/goalkeeper/grab_loop
