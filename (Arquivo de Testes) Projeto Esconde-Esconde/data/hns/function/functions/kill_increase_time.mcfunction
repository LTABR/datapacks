scoreboard players operation @s kill_increase_time *= .timePerKill Opcoes
scoreboard players operation .Segundos Cronometro += @s kill_increase_time

tellraw @a[team=Procuradores] [{"text":"+","color":"green"},{"score":{"name":"@s","objective":"kill_increase_time"},"color":"green","bold":true,"underlined":true},{"text":" Segundos Adicionados ao Cronômetro!","color":"white"}]
tellraw @a[team=Escondedores] [{"text":"+","color":"red"},{"score":{"name":"@s","objective":"kill_increase_time"},"color":"red","bold":true,"underlined":true},{"text":" Segundos Adicionados ao Cronômetro!","color":"white"}]

scoreboard players reset @s kill_increase_time

function hns:functions/convert_time
