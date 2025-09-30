scoreboard players set .start Opcoes 0
function hns:functions/reset_match
title @a clear
title @a[tag=Admin] title {"text":"Partida cancelada","color":"dark_red"}

execute if score .error Opcoes matches 1 run tellraw @a[tag=Admin] {"text":"Alguma configuração possui um valor inválido.","color":"red","bold":true,"italic":true,"underlined":true}

execute if score .error Opcoes matches 2 run tellraw @a {"text":"Não há Procuradores nesta partida.","color":"red","bold":true,"italic":true,"underlined":true}
execute if score .error Opcoes matches 2 run execute as @a[tag=!Admin] at @s run playsound minecraft:entity.villager.death player @s ~ ~ ~ 0.5 0

execute if score .error Opcoes matches 3 run tellraw @a[tag=Admin] {"text":"Devem existir pelo menos 2 jogadores fora do modo espectador!","color":"red"}

execute if score .error Opcoes matches 4 run tellraw @a[tag=Admin] {"text":"Deve existir pelo menos 1 escondedor e 1 procurador! Tente novamente.","color":"red"}
execute if score .error Opcoes matches 4 run execute store result score .seekers Opcoes run execute if entity @a[gamemode=!spectator]
execute if score .error Opcoes matches 4 run scoreboard players remove .seekers Opcoes 1
execute if score .error Opcoes matches 4 if score .seekers Opcoes matches 0 run scoreboard players set .seekers Opcoes 1
execute if score .error Opcoes matches 4 run tellraw @a[tag=Admin] [{"text":"Definida a quantidade de Procuradores iniciais para ","color":"dark_red","underlined": true},{"score":{"name":".seekers","objective":"Opcoes"},"color":"gold","underlined": true},{"text":".","color":"dark_red","underlined": true}]

execute if score .error Opcoes matches 5 run tellraw @a[tag=Admin] [{"text":"Não é possível iniciar uma partida com apenas um jogador no modo Último Restante!\n","color":"red"},{"text":"(Desative o modo Último Restante ou diminua o número de Procuradores.)","color":"dark_red"}]

execute if score .error Opcoes matches 6 run tellraw @a[tag=Admin] [{"text":"Os Procuradores manuais selecionados forçam que sobre apenas um Escondedor ou equipe!\n","color": "red"},{"text":"(Desative o modo Último Restante, diminua o número de Procuradores, remova um Procurador manual ou adicione/desmanche equipes.)","color":"dark_red"}]

execute as @a[tag=Admin] at @s run playsound minecraft:entity.villager.death player @s ~ ~ ~ 0.5 0
execute as @a[tag=Admin] run function hns:give/admin_book
scoreboard players reset .error Opcoes
schedule clear hns:sorter/sorting
