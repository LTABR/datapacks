scoreboard objectives setdisplay sidebar Pontos
scoreboard objectives setdisplay sidebar.team.red

scoreboard players add .score_animation Opcoes 1

execute if score .score_animation Opcoes matches 1 run scoreboard players set .max_points Opcoes 0
execute if score .score_animation Opcoes matches 1 run scoreboard players operation .max_points Opcoes > @a Pontos

execute if score .score_animation Opcoes matches 1 run scoreboard players display name @a Pontos {"text":"----","obfuscated":true}
execute if score .score_animation Opcoes matches 1 run scoreboard objectives modify Pontos numberformat fixed {"text":"???","color":"gold","bold":true}
execute if score .score_animation Opcoes matches 1 run scoreboard players display numberformat @a Pontos blank
execute if score .score_animation Opcoes matches 1 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos

execute if score .score_animation Opcoes matches 1 run schedule function hns:timer/reveal_scores 2s

execute if score .score_animation Opcoes matches 2 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display name @s Pontos
execute if score .score_animation Opcoes matches 2 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 3 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 4 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 5 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 6 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 7 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 8 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 9 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 10 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 11 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 12 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 13 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 14 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 15 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 16 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 17 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"gold","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 18 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"white","bold": true,"underlined": true}
execute if score .score_animation Opcoes matches 19 as @a if score @s Pontos = .max_points Opcoes run scoreboard players display numberformat @s Pontos styled {"color":"yellow","bold": true,"underlined": true}

execute if score .score_animation Opcoes matches 2..19 run schedule function hns:timer/reveal_scores 2t

execute if score .score_animation Opcoes matches 20 run scoreboard players display name @a Pontos
execute if score .score_animation Opcoes matches 20 run scoreboard players display numberformat @a Pontos styled {"color":"yellow"}
execute if score .score_animation Opcoes matches 20 run scoreboard objectives modify Pontos numberformat styled {"color":"yellow"}
execute if score .score_animation Opcoes matches 20 run scoreboard players reset .max_points Opcoes
execute if score .score_animation Opcoes matches 20 run scoreboard players reset .score_animation Opcoes

