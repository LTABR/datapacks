$scoreboard players remove .SegundosEspera Opcoes $(value)

execute if score .SegundosEspera Opcoes matches ..-1 if score .MinutosEspera Opcoes matches 1.. run scoreboard players set .remove_minute Opcoes 1

execute if score .remove_minute Opcoes matches 1 run scoreboard players remove .MinutosEspera Opcoes 1
execute if score .remove_minute Opcoes matches 1 run scoreboard players add .SegundosEspera Opcoes 60
execute if score .remove_minute Opcoes matches 1 run scoreboard players reset .remove_minute Opcoes

execute if score .SegundosEspera Opcoes matches ..0 if score .MinutosEspera Opcoes matches 0 run scoreboard players set .SegundosEspera Opcoes 1

function hns:configuration/timer/show_time_options
