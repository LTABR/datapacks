execute if score .Segundos Cronometro matches 0 run scoreboard players remove .Minutos Cronometro 1
execute if score .Segundos Cronometro matches 0 if score .Minutos Cronometro matches 0.. run scoreboard players set .Segundos Cronometro 60
execute if score .Segundos Cronometro matches 0 if score .Minutos Cronometro matches ..0 run function hns:timer/start_match
