execute if score .revelarPosicaoS Opcoes matches 60 run scoreboard players add .revelarPosicaoM Opcoes 1
execute if score .revelarPosicaoS Opcoes matches 60 run scoreboard players remove .revelarPosicaoS Opcoes 60

execute if score .revelarPosicaoS Opcoes matches -1 run scoreboard players add .revelarPosicaoS Opcoes 1
scoreboard players add .revelarPosicaoS Opcoes 1

execute if score .revelarPosicaoS Opcoes matches 60.. run scoreboard players add .revelarPosicaoM Opcoes 1
execute if score .revelarPosicaoS Opcoes matches 60.. run scoreboard players remove .revelarPosicaoS Opcoes 60

function hns:configuration/reveals/show_reveals_options
