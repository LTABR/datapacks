execute store result score aleatorizador aleatorizador run data get entity @e[type=minecraft:armor_stand,limit=1,sort=nearest] Rotation[0]

execute as @e[type=minecraft:armor_stand,limit=1,tag=tier_alto] at @s if score aleatorizador aleatorizador matches ..0 run function loot_generator:add_tier_alto1
execute as @e[type=minecraft:armor_stand,limit=1,tag=tier_alto] at @s if score aleatorizador aleatorizador matches 1.. run function loot_generator:add_tier_alto2

execute as @e[type=minecraft:armor_stand,limit=1,tag=maca_dourada] at @s run function loot_generator:add_maca_dourada

execute as @e[type=minecraft:armor_stand,limit=1,tag=recursos_dinamite] at @s run function loot_generator:add_recursos_dinamite

execute as @e[type=minecraft:armor_stand,limit=1,tag=flechas] at @s run function loot_generator:add_flechas

execute as @e[type=minecraft:armor_stand,limit=1,tag=besta_e_comidas] at @s run function loot_generator:add_besta_e_comidas

execute as @e[type=minecraft:armor_stand,limit=1,tag=recursos_basicos] at @s run function loot_generator:add_recursos_basicos

execute as @e[type=minecraft:armor_stand,limit=1,tag=recursos_basicos_ferramentas] at @s run function loot_generator:add_recursos_basicos_ferramentas

execute as @e[type=minecraft:armor_stand,limit=1,tag=finalizar] at @s run function loot_generator:finalizar

kill @e[type=item]

schedule function loot_generator:loop 2t