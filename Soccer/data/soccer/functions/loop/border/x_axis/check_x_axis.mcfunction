execute if score .first_corner z_axis < .second_corner z_axis if score .first_corner x_axis < .second_corner x_axis run function soccer:loop/border/x_axis/return_ball
execute if score .first_corner z_axis > .second_corner z_axis if score .first_corner x_axis < .second_corner x_axis run function soccer:loop/border/x_axis/return_ball
execute if score .first_corner z_axis < .second_corner z_axis if score .first_corner x_axis > .second_corner x_axis run function soccer:loop/border/x_axis/return_ball
execute if score .first_corner z_axis > .second_corner z_axis if score .first_corner x_axis > .second_corner x_axis run function soccer:loop/border/x_axis/return_ball
