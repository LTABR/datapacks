execute if score .first_corner x_axis < .second_corner x_axis if score .second_corner z_axis < .first_corner z_axis run function soccer:loop/border/z_axis/return_ball
execute if score .first_corner x_axis > .second_corner x_axis if score .second_corner z_axis < .first_corner z_axis run function soccer:loop/border/z_axis/return_ball
execute if score .first_corner x_axis < .second_corner x_axis if score .second_corner z_axis > .first_corner z_axis run function soccer:loop/border/z_axis/return_ball
execute if score .first_corner x_axis > .second_corner x_axis if score .second_corner z_axis > .first_corner z_axis run function soccer:loop/border/z_axis/return_ball
