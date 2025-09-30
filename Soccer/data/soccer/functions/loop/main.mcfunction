#runs every tick
# apply ball rotation
execute store result entity @e[type=minecraft:item_display,limit=1,tag=ball] Rotation[0] float 20.0 run data get entity @e[type=cat,limit=1,tag=ball] Rotation[0]
execute as @e[tag=ball,type=minecraft:item_display] run data merge entity @s {transformation:{translation:[0f,-0.25f,0f]}}
# store ball position
execute store result score .ball_pos x_axis run data get entity @e[type=item_display,limit=1,tag=ball] Pos[0]
execute store result score .ball_pos z_axis run data get entity @e[type=item_display,limit=1,tag=ball] Pos[2]
# goalkeeper system
execute as @e[type=cat,limit=1,tag=ball] on attacker if entity @s[tag=goalkeeper] unless score @s grab matches 1 at @s run function soccer:loop/goalkeeper/grab
execute as @e[type=interaction,limit=1,tag=kick] on attacker if entity @s[tag=goalkeeper] unless score @s grab matches 1 at @s run function soccer:loop/goalkeeper/grab

#detect goal
execute if score .larger_red_goal_side x_axis matches 0 if score .larger_red_goal_side z_axis matches 1 if score .ball_pos x_axis <= .red_goal_side1 x_axis if score .ball_pos z_axis <= .red_goal_side1 z_axis if score .ball_pos z_axis >= .red_goal_side2 z_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/blue
execute if score .larger_red_goal_side x_axis matches 0 if score .larger_red_goal_side z_axis matches 2 if score .ball_pos x_axis <= .red_goal_side1 x_axis if score .ball_pos z_axis <= .red_goal_side2 z_axis if score .ball_pos z_axis >= .red_goal_side1 z_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/blue
execute if score .larger_red_goal_side z_axis matches 0 if score .larger_red_goal_side x_axis matches 1 if score .ball_pos z_axis >= .red_goal_side1 z_axis if score .ball_pos x_axis <= .red_goal_side1 x_axis if score .ball_pos x_axis >= .red_goal_side2 x_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/blue
execute if score .larger_red_goal_side z_axis matches 0 if score .larger_red_goal_side x_axis matches 2 if score .ball_pos z_axis >= .red_goal_side1 z_axis if score .ball_pos x_axis <= .red_goal_side2 x_axis if score .ball_pos x_axis >= .red_goal_side1 x_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/blue

execute if score .larger_blue_goal_side x_axis matches 0 if score .larger_blue_goal_side z_axis matches 1 if score .ball_pos x_axis >= .blue_goal_side1 x_axis if score .ball_pos z_axis <= .blue_goal_side1 z_axis if score .ball_pos z_axis >= .blue_goal_side2 z_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/red
execute if score .larger_blue_goal_side x_axis matches 0 if score .larger_blue_goal_side z_axis matches 2 if score .ball_pos x_axis >= .blue_goal_side1 x_axis if score .ball_pos z_axis <= .blue_goal_side2 z_axis if score .ball_pos z_axis >= .blue_goal_side1 z_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/red
execute if score .larger_blue_goal_side z_axis matches 0 if score .larger_blue_goal_side x_axis matches 1 if score .ball_pos z_axis <= .blue_goal_side1 z_axis if score .ball_pos x_axis <= .blue_goal_side1 x_axis if score .ball_pos x_axis >= .blue_goal_side2 x_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/red
execute if score .larger_blue_goal_side z_axis matches 0 if score .larger_blue_goal_side x_axis matches 2 if score .ball_pos z_axis <= .blue_goal_side1 z_axis if score .ball_pos x_axis <= .blue_goal_side2 x_axis if score .ball_pos x_axis >= .blue_goal_side1 x_axis at @e[type=cat,limit=1,tag=ball] run function soccer:loop/score_goal/red

#detect corner kick
execute if score .field_axis options matches 0 run function soccer:loop/corner_kick/check_x
execute if score .field_axis options matches 2 run function soccer:loop/corner_kick/check_z

#detect ball out of bounds
execute if score .field_axis options matches 0 run function soccer:loop/border/out_of_bounds_x
execute if score .field_axis options matches 2 run function soccer:loop/border/out_of_bounds_z

#get ball to the border
execute if score .field_axis options matches 0 run function soccer:loop/border/x_axis/check_x_axis
execute if score .field_axis options matches 2 run function soccer:loop/border/z_axis/check_z_axis

execute if score .foul options matches 1.. run data merge entity @e[type=minecraft:cat,limit=1,tag=ball] {Motion: [0.0d, 0.0d, 0.0d]}
execute if score .foul options matches 1.. run scoreboard players set .foul options 0

execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s if entity @a[distance=..0.8] run function soccer:loop/detect_kick/near_ball
execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s unless score .player_x kick matches -2..2 store result entity @s Motion[0] double 0.0004 run scoreboard players get .player_x kick
execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s unless score .player_z kick matches -2..2 store result entity @s Motion[2] double 0.0004 run scoreboard players get .player_z kick
execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s unless entity @a[distance=..0.8] run function soccer:loop/detect_kick/not_near_ball
execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s if entity @a[distance=..0.8] run data remove storage minecraft:kick Pos
execute as @e[type=minecraft:cat,limit=1,tag=ball] at @s if entity @a[distance=..0.8] run data remove storage minecraft:kick ballPos

execute as @e[type=minecraft:interaction,limit=1,tag=kick] at @s on attacker if entity @s[distance=..1.8] rotated as @p run function soccer:loop/detect_kick/kick
execute as @e[type=interaction,tag=kick] on attacker unless entity @e[type=interaction,distance=..0.8,tag=kick] run data remove entity @e[type=interaction,tag=kick,limit=1,sort=nearest] attack

#loop
schedule function soccer:loop/main 1t

# all loops to reset: grab_loop, main
