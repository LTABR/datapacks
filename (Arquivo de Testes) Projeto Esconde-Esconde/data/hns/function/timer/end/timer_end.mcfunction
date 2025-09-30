execute as @a[team=Procuradores] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 1
execute as @a[team=!Procuradores] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1
execute as @a[team=!Procuradores] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 1
title @a[team=Procuradores] title {"text":"Vitória dos Escondedores!","color":"dark_red","bold":true}
title @a[team=!Procuradores] title [{"text":"Vitória dos ","color":"white","bold":true},{"text":"Escondedores","color":"dark_green","bold":true,"italic":true,"underlined":true},{"text":"!","color":"white"}]

tellraw @a {"text":"==============================","color":"gold"}
tellraw @a {"text":"Pontos por fogos de artifício:","color":"white","bold":true}

execute unless entity @a[scores={Pontos=1..}] run tellraw @a {"text":"Nenhum Ponto Por Fogos de Artifício.","color":"gray"}
execute as @a[scores={Pontos=1..}] run tellraw @a [{"text":"+","color":"green"},{"score":{"name":"@s","objective":"Pontos"},"color":"green"},{"text":" ","italic":false},{"selector":"@s","color":"white"}]

tellraw @a {"text":" "}
tellraw @a {"text":"Número de abates:","color":"white","bold":true}

execute unless entity @a[scores={Abates=1..}] run tellraw @a {"text":"Nenhum Abate.","color":"gray"}

tellraw @a [{"text":"(","color":"gray"},{"score":{"name":".pontosAbate","objective":"Opcoes"},"color":"gray"},{"text":" ponto(s) por abate)","color":"gray"}]
execute as @a[team=Procuradores,scores={Abates=1..}] at @s run tellraw @a [{"selector":"@s","color":"white"},{"text":" ","italic":false},{"score":{"name":"@s","objective":"Abates"},"color":"red"},{"text": " Abate(s).","color": "gray"}]

# victory score calculation
tellraw @a {"text":" "}
execute if score .shared_lives Opcoes matches 0 run tellraw @a [{"text":"(+","color":"green","bold":true},{"score":{"name":".vitoriaEscondedores","objective": "Opcoes"},"color":"green","bold":true},{"text":") ","color":"green","bold":true},{"text":"Vitória dos ","color":"gray","italic":false},{"text":"Escondedores","color":"dark_green","italic":false,"underlined":true},{"text":": ","color":"gray"},{"selector":"@a[team=Escondedores]","color":"gold","bold":false,"italic":false,"underlined":false}]
execute if score .shared_lives Opcoes matches 1 run tellraw @a [{"text":"(+","color":"green","bold":true},{"score":{"name":".vitoriaEscondedores","objective": "Opcoes"},"color":"green","bold":true},{"text":" Por Integrante de Equipe) ","color":"green","bold":true},{"text":"Vitória dos ","color":"gray","italic":false},{"text":"Escondedores","color":"dark_green","italic":false,"underlined":true},{"text":": ","color":"gray"},{"selector":"@a[team=Escondedores]","color":"gold","bold":false,"italic":false,"underlined":false}]

execute if score .shared_lives Opcoes matches 1 as @a[scores={shared_lives=1..},team=Escondedores] at @s run function hns:timer/end/calculate_teams_score

execute unless score .shared_lives Opcoes matches 1 run scoreboard players operation @a[team=Escondedores,gamemode=adventure] Pontos += .vitoriaEscondedores Opcoes

# score per kill calculation
tellraw @a {"text":" "}
execute as @a[team=Procuradores] run scoreboard players operation @s Abates *= .pontosAbate Opcoes
execute as @a[team=Procuradores] run scoreboard players operation @s Pontos += @s Abates

execute as @a run scoreboard players operation @s pontosTotais += @s Pontos

tellraw @a {"text":"Pontuação total da partida:","color":"white","bold":true}
execute as @a at @s run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":": "},{"text":"+","color":"green","bold":false},{"score":{"name":"@s","objective":"Pontos"},"color":"green"}]

tellraw @a {"text":"==============================","color":"gold"}

scoreboard players set .timer_end Opcoes 1
scoreboard players set .start Opcoes 0
scoreboard players set .seekers_glow Opcoes 1
function hns:functions/reset_match

