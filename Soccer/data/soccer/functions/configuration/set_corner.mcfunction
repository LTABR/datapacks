function soccer:functions/reset_match

scoreboard players add .corner_order options 1

execute if score .corner_order options matches 1 summon minecraft:block_display store result score .first_corner x_axis run data get entity @s Pos[0]
execute if score .corner_order options matches 1 summon minecraft:block_display store result score .first_corner z_axis run data get entity @s Pos[2]
execute if score .corner_order options matches 1 run tellraw @a[team=admin] [{"text":"Primeiro ponto do campo definido","color":"white"}]

execute if score .corner_order options matches 2 summon minecraft:block_display store result score .second_corner x_axis run data get entity @s Pos[0]
execute if score .corner_order options matches 2 summon minecraft:block_display store result score .second_corner z_axis run data get entity @s Pos[2]
execute if score .corner_order options matches 2 run kill @e[tag=ball]
execute if score .corner_order options matches 2 run kill @e[tag=kick]

kill @e[type=block_display,limit=2,sort=nearest]
setblock ~ ~ ~ air

#clone coords values
scoreboard players operation .check x_axis = .first_corner x_axis
scoreboard players operation .check2 x_axis = .second_corner x_axis

scoreboard players operation .check z_axis = .first_corner z_axis
scoreboard players operation .check2 z_axis = .second_corner z_axis

#center of the field
# convert to double
execute if score .corner_order options matches 2 run scoreboard players operation .first_corner x_axis *= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .second_corner x_axis *= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .first_corner z_axis *= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .second_corner z_axis *= .thousand options

# assign values and calculate center ((x1 + x2) / 2)
execute if score .corner_order options matches 2 run scoreboard players operation .center x_axis = .first_corner x_axis
execute if score .corner_order options matches 2 run scoreboard players operation .center z_axis = .first_corner z_axis

execute if score .corner_order options matches 2 run scoreboard players operation .center x_axis += .second_corner x_axis
execute if score .corner_order options matches 2 run scoreboard players operation .center z_axis += .second_corner z_axis

execute if score .corner_order options matches 2 run scoreboard players operation .center x_axis /= .two options
execute if score .corner_order options matches 2 run scoreboard players operation .center z_axis /= .two options

# convert to int
execute if score .corner_order options matches 2 run scoreboard players operation .first_corner x_axis /= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .second_corner x_axis /= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .first_corner z_axis /= .thousand options
execute if score .corner_order options matches 2 run scoreboard players operation .second_corner z_axis /= .thousand options

execute if score .corner_order options matches 2 run tellraw @a[team=admin] [{"text":"Área do campo definida com sucesso!","color":"green"}]
execute if score .corner_order options matches 2 run function soccer:loop/main

execute if score .corner_order options matches 2 run clear @a[team=admin] command_block
execute if score .corner_order options matches 2 run give @a[team=admin] command_block{display: {Name: '[{"text":"Set ","color":"white","italic":false},{"text":"Blue","color":"blue","bold":true,"underlined":true},{"text":" goal","italic":false,"underlined":false}]'}, BlockEntityTag: {Command: "function soccer:configuration/set_blue_goal", auto: 1b}} 1
execute if score .corner_order options matches 3 run scoreboard players set .corner_order options 0

