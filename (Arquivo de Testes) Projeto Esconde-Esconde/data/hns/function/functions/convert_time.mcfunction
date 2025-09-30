execute if score .Segundos Cronometro matches 60.. run scoreboard players add .Minutos Cronometro 1
execute if score .Segundos Cronometro matches 60.. run scoreboard players remove .Segundos Cronometro 60
execute if score .Segundos Cronometro matches 60.. run function hns:functions/convert_time
