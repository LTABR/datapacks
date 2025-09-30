execute if score .Minutos Cronometro matches 0 run function hns:timer/end/timer_end

execute if score .Minutos Cronometro matches 1 run tellraw @a [{"text":"1 minuto","color":"yellow","bold":true,"underlined":true},{"text":" restante!","color":"white","bold":false,"underlined":false}]
execute if score .Minutos Cronometro matches 1 as @a[team=Escondedores] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.75 0

execute if score .Minutos Cronometro matches 2 run bossbar set hns:timer color yellow
execute if score .Minutos Cronometro matches 2 run tellraw @a [{"text":"2 minutos","color":"green","bold":true,"underlined":true},{"text":" restantes!","color":"white","bold":false,"underlined":false}]
execute if score .Minutos Cronometro matches 2 as @a[team=Escondedores] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.35 1

execute if score .Minutos Cronometro = .revelarPontos Opcoes run tellraw @a [{"text":"Revelando pontuação da partida à direita da tela.","color":"white","bold":false,"underlined":false}]
execute if score .Minutos Cronometro = .revelarPontos Opcoes run scoreboard players set .score_animation Opcoes 0
execute if score .Minutos Cronometro = .revelarPontos Opcoes run function hns:timer/reveal_scores

execute if score .Minutos Cronometro matches 1.. run scoreboard players remove .Minutos Cronometro 1
scoreboard players add .Segundos Cronometro 60
