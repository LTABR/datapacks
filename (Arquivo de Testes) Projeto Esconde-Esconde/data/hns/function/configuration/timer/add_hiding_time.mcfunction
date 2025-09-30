$scoreboard players add .SegundosEspera Opcoes $(value)

execute if score .SegundosEspera Opcoes matches 60.. run scoreboard players add .MinutosEspera Opcoes 1
execute if score .SegundosEspera Opcoes matches 60.. run scoreboard players remove .SegundosEspera Opcoes 60

function hns:configuration/timer/show_time_options
