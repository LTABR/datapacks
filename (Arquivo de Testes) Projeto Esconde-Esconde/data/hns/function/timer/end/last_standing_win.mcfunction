execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1
execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 1
title @a title {"text":"Vitória para","color":"white","bold":true,"italic": true}
title @a subtitle {"selector":"@a[team=Escondedores]","color":"green","bold":true,"italic": true}

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
scoreboard players set .calculation_result pontosTotais 0
execute as @a[team=Procuradores] run scoreboard players operation .calculation_result pontosTotais += .pontosPorProcurador Opcoes
tellraw @a [{"text":"(+","color":"green","bold":true},{"score":{"name":".calculation_result","objective": "pontosTotais"},"color":"green","bold":true},{"text":") ","color":"green","bold":true},{"text":"Vitória de ","color":"gray","italic":false},{"selector":"@a[team=Escondedores]","color":"green","bold":true,"italic": true}]
tellraw @a [{"text":"(","color":"gray"},{"score":{"name":".pontosPorProcurador","objective":"Opcoes"},"color":"gray"},{"text":" ponto(s) por Procurador)","color":"gray"}]
scoreboard players operation @a[team=Escondedores,gamemode=!spectator] Pontos += .calculation_result pontosTotais
scoreboard players reset .calculation_result pontosTotais

# score per kill calculation
tellraw @a {"text":" "}
execute as @a[team=Procuradores] run scoreboard players operation @s Abates *= .pontosAbate Opcoes
execute as @a[team=Procuradores] run scoreboard players operation @s Pontos += @s Abates

execute as @a run scoreboard players operation @s pontosTotais += @s Pontos

tellraw @a {"text":"Pontuação total da partida:","color":"white","bold":true}
execute as @a at @s run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":": "},{"text":"+","color":"green","bold":false},{"score":{"name":"@s","objective":"Pontos"},"color":"green"}]

tellraw @a {"text":" "}
tellraw @a [{"text": "Vitória de ","color": "white"},{"selector":"@a[team=Escondedores]","color":"gold","bold": true,"italic": true},{"text": " Por Ser(em) a(s) Última(s) Pessoa(s) Restante(s)!","color": "white"}]

tellraw @a {"text":"==============================","color":"gold"}

scoreboard players reset .remaining_team_size Opcoes
scoreboard players reset .remaining_hiders Opcoes
scoreboard players set .timer_end Opcoes 1
scoreboard players set .start Opcoes 0
scoreboard players set .seekers_glow Opcoes 1

schedule clear hns:timer/end/seekers_win

function hns:functions/reset_match
