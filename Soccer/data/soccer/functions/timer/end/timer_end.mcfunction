scoreboard objectives modify Pontos numberformat

execute as @a[team=Procuradores] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 0.5 1
execute as @a[team=Escondedores] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7 1
execute as @a[team=Escondedores] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7 1
title @a[team=Procuradores] title {"text":"Vitória dos Escondedores!","color":"dark_red","bold":true}
title @a[team=Escondedores] title [{"text":"Vitória dos ","color":"white","bold":true},{"text":"Escondedores","color":"dark_green","bold":true,"italic":true,"underlined":true},{"text":"!","color":"white"}]

effect give @a[team=Escondedores] minecraft:glowing 30 255 true

tellraw @a {"text":"==============================","color":"gold"}
tellraw @a {"text":"Pontos por fogos de artifício:","color":"white","bold":true}
execute as @a at @s run tellraw @a [{"text":"+","color":"green"},{"score":{"name":"@s","objective":"Pontos"},"color":"green"},{"text":" ","italic":false},{"selector":"@s","color":"white"}]
tellraw @a {"text":" "}
tellraw @a {"text":"Número de abates:","color":"white","bold":true}
tellraw @a {"text":"(15 pontos por abate)","color":"gray"}
execute as @a[team=Procuradores] at @s run tellraw @a [{"score":{"name":"@s","objective":"Abates"},"color":"red"},{"text":" ","italic":false},{"selector":"@s","color":"white"}]

tellraw @a {"text":" "}
tellraw @a [{"text":"(+5) ","color":"green","bold":true},{"text":"Vitória dos ","color":"gray","italic":false},{"text":"Escondedores","color":"green","italic":false,"underlined":true},{"text":": ","color":"gray"},{"selector":"@a[team=Escondedores]","color":"gold","bold":false,"italic":false,"underlined":false}]
scoreboard players operation @a[team=Escondedores,gamemode=adventure] Pontos += .vitoriaEscondedores Opcoes

tellraw @a {"text":" "}
scoreboard players operation @a[team=Procuradores] Abates *= .pontosAbate Opcoes
execute as @a[team=Procuradores] run scoreboard players operation @s Pontos += @s Abates

tellraw @a {"text":"Pontuação total da partida:","color":"white","bold":true}
execute as @a at @s run tellraw @a [{"selector":"@s","color":"white","bold":true},{"text":": "},{"text":"+","color":"green","bold":false},{"score":{"name":"@s","objective":"Pontos"},"color":"green"}]

execute as @a at @s store result score @s pontosTotais run scoreboard players operation @s Pontos += @s pontosTotais

tellraw @a {"text":"==============================","color":"gold"}

scoreboard players set .start Opcoes 0
function hns:functions/reset_match
