data merge storage border_saves {current_border:{y1:319, y2:-64}}

function hns:functions/backup/get_dimension_heights with storage minecraft:border_saves current_border

data remove storage border_saves current_border.y1
data remove storage border_saves current_border.y2
