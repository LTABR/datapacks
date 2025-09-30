execute if score .ball_pos x_axis > .first_corner x_axis if score .first_corner x_axis > .second_corner x_axis run scoreboard players set .foul options 1
execute if score .ball_pos x_axis < .first_corner x_axis if score .first_corner x_axis < .second_corner x_axis run scoreboard players set .foul options 1
execute if score .ball_pos x_axis < .second_corner x_axis if score .first_corner x_axis > .second_corner x_axis run scoreboard players set .foul options 2
execute if score .ball_pos x_axis > .second_corner x_axis if score .first_corner x_axis < .second_corner x_axis run scoreboard players set .foul options 2
