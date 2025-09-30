execute store result score .gravity Opcoes run data get storage options ingame.gravity 100
execute if score .gravity Opcoes matches 0..3 run tellraw @s[tag=Admin] {"text":"O Cálculo Pode Demorar um Pouco Devido à Gravidade Baixa.","color":"red"}

data modify storage minecraft:options seekers.gravity set from storage minecraft:options ingame.gravity
data modify storage minecraft:options hiders.gravity set from storage minecraft:options ingame.gravity

execute as @p[tag=Admin] at @s run function hns:configuration/ingame_attributes/jump_strength/summon_armor_stands with storage options seekers
execute as @p[tag=Admin] at @s run function hns:configuration/ingame_attributes/jump_strength/summon_armor_stands with storage options hiders

data remove storage minecraft:options seekers.gravity
data remove storage minecraft:options hiders.gravity

execute store result score .start Opcoes run data get entity @e[type=minecraft:armor_stand,limit=1,tag=jump] Pos[1]

function hns:configuration/ingame_attributes/jump_strength/finish_calculation
schedule function hns:configuration/ingame_attributes/jump_strength/force_calculation 5s
