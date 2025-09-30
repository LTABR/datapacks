execute if score .ball_pos z_axis < .first_corner z_axis if score .first_corner z_axis < .second_corner z_axis run scoreboard players set .foul options 3
execute if score .ball_pos z_axis > .first_corner z_axis if score .first_corner z_axis > .second_corner z_axis run scoreboard players set .foul options 3
execute if score .ball_pos z_axis > .second_corner z_axis if score .first_corner z_axis < .second_corner z_axis run scoreboard players set .foul options 4
execute if score .ball_pos z_axis < .second_corner z_axis if score .first_corner z_axis > .second_corner z_axis run scoreboard players set .foul options 4
