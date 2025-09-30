function hns:functions/reset_match
title @a clear
title @a title {"text":"Partida cancelada","color":"dark_red"}

execute if score error Opcoes matches 1 run tellraw @a[tag=Admin] {"text":"Alguma configuração possui um valor inválido.","color":"red","bold":true,"italic":true,"underlined":true}
execute if score error Opcoes matches 2 run tellraw @a {"text":"Não há Procuradores nesta partida.","color":"red","bold":true,"italic":true,"underlined":true}
execute if score error Opcoes matches 3 run tellraw @a {"text":"Devem existir pelo menos 2 jogadores fora do modo espectador!","color":"red"}

execute as @a at @s run playsound minecraft:entity.villager.death player @s ~ ~ ~ 0.5 0
scoreboard players reset error Opcoes
