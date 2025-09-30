tellraw @a {"text":"Criando Backup da Barreira Atual...","color":"yellow"}

$execute store success score .is_air border_saves run execute if block ~ $(y1) ~ air
$execute if score .is_air border_saves matches 0 store success score .is_air border_saves run execute unless block ~ $(y1) ~ air

$execute if score .is_air border_saves matches 1 run scoreboard players set .max_height border_saves $(y1)

execute if score .is_air border_saves matches 0 store result score .max_height border_saves run data get storage border_saves backup_coordinates.y1
execute if score .is_air border_saves matches 0 store result storage border_saves backup_coordinates.y1 int 1.0 run scoreboard players remove .max_height border_saves 16
$execute if score .is_air border_saves matches 0 in $(dimension) run function hns:functions/backup/get_dimension_heights with storage border_saves backup_coordinates

$execute store success score .is_air border_saves run execute if block ~ $(y2) ~ air
$execute if score .is_air border_saves matches 0 store success score .is_air border_saves run execute unless block ~ $(y2) ~ air

$execute if score .is_air border_saves matches 1 run scoreboard players set .min_height border_saves $(y2)

execute if score .is_air border_saves matches 0 store result score .min_height border_saves run data get storage border_saves backup_coordinates.y2
execute if score .is_air border_saves matches 0 store result storage border_saves backup_coordinates.y2 int 1.0 run scoreboard players add .min_height border_saves 16
$execute if score .is_air border_saves matches 0 in $(dimension) run function hns:functions/backup/get_dimension_heights with storage border_saves backup_coordinates

execute unless score .max_height border_saves matches ..319 unless score .min_height border_saves matches -64.. run return run tellraw @a {"text":"Não Foi Possível Criar Backup, a Altura Total Desta Dimensão é Maior do Que o Padrão Para Backup!","color":"red"}

schedule function hns:functions/backup/calculate_coordinates 1t
