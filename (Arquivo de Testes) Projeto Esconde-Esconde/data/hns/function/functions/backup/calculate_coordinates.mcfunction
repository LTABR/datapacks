scoreboard players set .2 Diametro 2
execute store result score .radius Diametro run worldborder get
scoreboard players operation .radius Diametro /= .2 Diametro

execute store result score .first_x Diametro store result score .second_x Diametro run data get storage border_saves current_border.x
execute store result score .first_z Diametro store result score .second_z Diametro run data get storage border_saves current_border.z

scoreboard players operation .first_x Diametro -= .radius Diametro
scoreboard players operation .first_z Diametro -= .radius Diametro

scoreboard players operation .second_x Diametro += .radius Diametro
scoreboard players operation .second_z Diametro += .radius Diametro

execute store result storage border_saves backup_coordinates.x1 int 1.0 run scoreboard players get .first_x Diametro
execute store result storage border_saves backup_coordinates.z1 int 1.0 run scoreboard players get .first_z Diametro

execute store result storage border_saves backup_coordinates.x2 int 1.0 run scoreboard players get .second_x Diametro
execute store result storage border_saves backup_coordinates.z2 int 1.0 run scoreboard players get .second_z Diametro

data modify storage border_saves backup_coordinates.dimension set from storage border_saves current_border.dimension

scoreboard players set .-1 Diametro -1
execute if score .first_x Diametro matches ..0 run scoreboard players operation .first_x Diametro *= .-1 Diametro
execute if score .first_z Diametro matches ..0 run scoreboard players operation .first_z Diametro *= .-1 Diametro
execute if score .second_x Diametro matches ..0 run scoreboard players operation .second_x Diametro *= .-1 Diametro
execute if score .second_z Diametro matches ..0 run scoreboard players operation .second_z Diametro *= .-1 Diametro
scoreboard players reset .-1 Diametro

execute store result score .smallest_x Diametro run scoreboard players operation .biggest_x Diametro = .first_x Diametro
execute store result score .smallest_z Diametro run scoreboard players operation .biggest_z Diametro = .first_z Diametro

scoreboard players operation .biggest_x Diametro > .second_x Diametro
scoreboard players operation .biggest_z Diametro > .second_z Diametro

scoreboard players operation .smallest_x Diametro < .second_x Diametro
scoreboard players operation .smallest_z Diametro < .second_z Diametro

scoreboard players operation .biggest_x Diametro -= .smallest_x Diametro
scoreboard players operation .biggest_z Diametro -= .smallest_z Diametro

scoreboard players set .destination_x Diametro 848
scoreboard players set .destination_z Diametro 0

execute store result storage border_saves backup_coordinates.destination_x int 1.0 run scoreboard players operation .destination_x Diametro += .biggest_x Diametro
execute store result storage border_saves backup_coordinates.destination_z int 1.0 run scoreboard players operation .destination_z Diametro += .biggest_z Diametro

execute store result storage border_saves backup_coordinates.destination_border_x int 1.0 run scoreboard players add .destination_x Diametro 1
execute store result storage border_saves backup_coordinates.destination_border_z int 1.0 run scoreboard players add .destination_z Diametro 1

scoreboard players reset .first_x Diametro
scoreboard players reset .first_z Diametro
scoreboard players reset .second_x Diametro
scoreboard players reset .second_z Diametro
scoreboard players reset .destination_x Diametro
scoreboard players reset .destination_z Diametro
scoreboard players reset .biggest_x Diametro
scoreboard players reset .biggest_z Diametro
scoreboard players reset .smallest_x Diametro
scoreboard players reset .smallest_z Diametro
scoreboard players reset .2 Diametro

function hns:functions/backup/create_backup with storage border_saves backup_coordinates
