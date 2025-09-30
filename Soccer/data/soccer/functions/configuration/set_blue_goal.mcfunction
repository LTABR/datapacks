scoreboard players add .blue_goal_side options 1

execute if score .blue_goal_side options matches 1 summon minecraft:block_display store result score .blue_goal_side1 x_axis run data get entity @s Pos[0]
execute if score .blue_goal_side options matches 1 summon minecraft:block_display store result score .blue_goal_side1 z_axis run data get entity @s Pos[2]
execute if score .blue_goal_side options matches 1 run tellraw @a[team=admin] [{"text":"Primeiro ponto da entrada do gol ","color":"white"},{"text":"Azul","color":"blue","bold":true,"underlined":true},{"text":" definida.","bold":false,"underlined":false}]

execute if score .blue_goal_side options matches 2 summon minecraft:block_display store result score .blue_goal_side2 x_axis run data get entity @s Pos[0]
execute if score .blue_goal_side options matches 2 summon minecraft:block_display store result score .blue_goal_side2 z_axis run data get entity @s Pos[2]

kill @e[type=block_display,limit=2,sort=nearest]
setblock ~ ~ ~ air

execute unless score .blue_goal_side2 x_axis = .blue_goal_side1 x_axis unless score .blue_goal_side2 z_axis = .blue_goal_side1 z_axis if score .blue_goal_side options matches 2 run tellraw @a[team=admin] {"text":"A entrada do gol deve ser uma linha reta!", "color":"red"}
execute unless score .blue_goal_side2 x_axis = .blue_goal_side1 x_axis unless score .blue_goal_side2 z_axis = .blue_goal_side1 z_axis if score .blue_goal_side options matches 2 run function soccer:configuration/reset_blue_goal_scores

execute if score .larger_blue_goal_side z_axis matches 0.. if score .red_goal_side1 x_axis = .red_goal_side2 x_axis unless score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run tellraw @a[team=admin] {"text":"Os gols devem ser perpendiculares ao mesmo eixo! (um em frente ao outro)", "color":"red"}
execute if score .larger_blue_goal_side z_axis matches 0.. if score .red_goal_side1 x_axis = .red_goal_side2 x_axis unless score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run function soccer:configuration/reset_red_goal_scores
execute if score .larger_blue_goal_side z_axis matches 0.. if score .red_goal_side1 x_axis = .red_goal_side2 x_axis unless score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run function soccer:configuration/reset_blue_goal_scores

execute if score .larger_blue_goal_side z_axis matches 0.. unless score .red_goal_side1 x_axis = .red_goal_side2 x_axis if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run tellraw @a[team=admin] {"text":"Os gols devem ser perpendiculares ao mesmo eixo! (um em frente ao outro)", "color":"red"}
execute if score .larger_blue_goal_side z_axis matches 0.. unless score .red_goal_side1 x_axis = .red_goal_side2 x_axis if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run function soccer:configuration/reset_red_goal_scores
execute if score .larger_blue_goal_side z_axis matches 0.. unless score .red_goal_side1 x_axis = .red_goal_side2 x_axis if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run function soccer:configuration/reset_blue_goal_scores

execute if score .blue_goal_side1 x_axis > .blue_goal_side2 x_axis run scoreboard players set .larger_blue_goal_side x_axis 1
execute if score .blue_goal_side1 z_axis > .blue_goal_side2 z_axis run scoreboard players set .larger_blue_goal_side z_axis 1
execute if score .blue_goal_side2 x_axis > .blue_goal_side1 x_axis run scoreboard players set .larger_blue_goal_side x_axis 2
execute if score .blue_goal_side2 z_axis > .blue_goal_side1 z_axis run scoreboard players set .larger_blue_goal_side z_axis 2
execute if score .blue_goal_side2 x_axis = .blue_goal_side1 x_axis run scoreboard players set .larger_blue_goal_side x_axis 0
execute if score .blue_goal_side2 z_axis = .blue_goal_side1 z_axis run scoreboard players set .larger_blue_goal_side z_axis 0

execute if score .blue_goal_side options matches 3 run function soccer:configuration/reset_blue_goal_scores

execute if score .blue_goal_side1 x_axis = .blue_goal_side2 x_axis run scoreboard players set .field_axis options 0
execute if score .blue_goal_side1 z_axis = .blue_goal_side2 z_axis run scoreboard players set .field_axis options 2

execute if score .larger_blue_goal_side z_axis matches 0.. if score .blue_goal_side options matches 2 run tellraw @a[team=admin] [{"text":"A entrada do gol ","color":"green"},{"text":"Azul","color":"blue","bold":true,"underlined":true},{"text":" foi definida com sucesso.","bold":false,"underlined":false}]
execute if score .larger_blue_goal_side z_axis matches 0.. if score .blue_goal_side options matches 2 run clear @a[team=admin] command_block
execute if score .larger_blue_goal_side z_axis matches 0.. if score .blue_goal_side options matches 2 run give @a[team=admin] command_block{display: {Name: '[{"text":"Set ","color":"white","italic":false},{"text":"Red","color":"red","bold":true,"underlined":true},{"text":" goal","italic":false,"underlined":false}]'}, BlockEntityTag: {Command: "function soccer:configuration/set_red_goal", auto: 1b}} 1
execute if score .blue_goal_side options matches 2.. run scoreboard players set .blue_goal_side options 0

