execute store result score .ball_pos_double x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[0] 1000
execute store result score .ball_pos_double z_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[2] 1000

tp @e[type=cat,limit=1,tag=ball] ^ ^ ^0.1

execute store result score .ball_pos_double2 x_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[0] 1000
execute store result score .ball_pos_double2 z_axis run data get entity @e[type=cat,limit=1,tag=ball] Pos[2] 1000

execute store result entity @e[type=cat,limit=1,tag=ball] Motion[0] double 0.015 run scoreboard players operation .ball_pos_double2 x_axis -= .ball_pos_double x_axis
execute store result entity @e[type=cat,limit=1,tag=ball] Motion[2] double 0.015 run scoreboard players operation .ball_pos_double2 z_axis -= .ball_pos_double z_axis

tag @e[type=interaction,tag=kick] add kicked

damage @e[type=cat,limit=1,tag=ball] 0.1 minecraft:arrow by @p from @p
data remove entity @e[type=minecraft:interaction,tag=kicked,limit=1] attack
tag @e[type=interaction,tag=kicked] remove kicked
