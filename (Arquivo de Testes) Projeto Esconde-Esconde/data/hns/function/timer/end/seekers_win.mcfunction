team join Escondedores @p[tag=dead_hider]
tag @a[tag=dead_hider] remove dead_hider

scoreboard objectives modify Pontos numberformat

execute as @a[team=!Procuradores] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 1
execute as @a[team=Procuradores] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1
execute as @a[team=Procuradores] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 1
title @a[team=!Procuradores] title {"text":"Vitória dos Procuradores!","color":"dark_red","bold":true}
title @a[team=Procuradores] title [{"text":"Vitória dos ","color":"white","bold":true},{"text":"Procuradores","color":"dark_red","bold":true,"italic":true,"underlined":true},{"text":"!","color":"white"}]

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
tellraw @a [{"text":"(+","color":"green","bold":true},{"score":{"name":".vitoriaProcuradores","objective": "Opcoes"},"color":"green","bold":true},{"text":") ","color":"green","bold":true},{"text":"Vitória dos ","color":"gray","italic":false},{"text":"Procuradores","color":"red","italic":false,"underlined":true},{"text":": ","color":"gray"},{"selector":"@a[team=Procuradores]","color":"gold","bold":false,"italic":false,"underlined":false}]
scoreboard players operation @a[team=Procuradores] Pontos += .vitoriaProcuradores Opcoes
tellraw @a {"text":" "}

# score per kill calculation
execute as @a[team=Procuradores] run scoreboard players operation @s Abates *= .pontosAbate Opcoes
execute as @a[team=Procuradores] run scoreboard players operation @s Pontos += @s Abates

execute as @a run scoreboard players operation @s pontosTotais += @s Pontos

tellraw @a {"text":"Pontuação total da partida:","color":"white","bold":true}
execute as @a at @s run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":": "},{"text":"+","color":"green","bold":false},{"score":{"name":"@s","objective":"Pontos"},"color":"green"}]
tellraw @a {"text":" "}

tellraw @a [{"text":"Tempo Final Restante: ","color":"yellow"},{"score":{"name":".Minutos","objective":"Cronometro"},"color":"gold"},{"text":" Minuto(s) e ","color":"white"},{"score":{"name":".Segundos","objective":"Cronometro"},"color":"gold"},{"text":" Segundo(s).","color":"white"}]
tellraw @a {"text":"==============================","color":"gold"}

scoreboard players set .start Opcoes 0
function hns:functions/reset_match
