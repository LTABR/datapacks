execute if score .revelarPosicaoS Opcoes matches 1.. if score .revelarPosicaoM Opcoes matches 0 run scoreboard players remove .revelarPosicaoS Opcoes 1
execute if score .revelarPosicaoM Opcoes matches 1.. run scoreboard players remove .revelarPosicaoS Opcoes 1

execute if score .revelarPosicaoS Opcoes matches ..-1 if score .revelarPosicaoM Opcoes matches 1.. run scoreboard players add .revelarPosicaoS Opcoes 60
execute if score .revelarPosicaoS Opcoes matches 59.. if score .revelarPosicaoM Opcoes matches 1.. run scoreboard players remove .revelarPosicaoM Opcoes 1

execute if score .revelarPosicaoS Opcoes matches 0 if score .revelarPosicaoM Opcoes matches 0 run scoreboard players set .revelarPosicaoS Opcoes -1

function hns:configuration/reveals/show_reveals_options
