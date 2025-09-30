execute store result score .gravity Opcoes run data get storage options ingame.gravity 100
execute if score .gravity Opcoes matches 0..3 run tellraw @s[tag=Admin] {"text":"O Cálculo Demorará um Pouco Devido à Gravidade Baixa.","color":"red"}

function hns:configuration/feather_jump/summon_armor_stands with storage options ingame
execute store result score .start Opcoes run data get entity @e[type=minecraft:armor_stand,limit=1,tag=jump] Pos[1]

function hns:configuration/feather_jump/finish_calculation
schedule function hns:configuration/feather_jump/force_calculation 5s
