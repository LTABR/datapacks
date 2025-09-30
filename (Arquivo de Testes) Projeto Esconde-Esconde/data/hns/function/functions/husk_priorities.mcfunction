execute if score @s prioridadehusk >= .recargahusk Opcoes at @s run function hns:refill/husk
execute if score @s prioridadehusk >= .recargahusk Opcoes run scoreboard players reset @s prioridadehusk
execute unless items entity @s container.* minecraft:husk_spawn_egg at @s run scoreboard players add @s prioridadehusk 1
