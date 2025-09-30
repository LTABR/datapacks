clear @p[scores={place_command_block=1..},tag=Admin] command_block[minecraft:item_name={bold:1b,color:"dark_green",extra:[{bold:0b,color:"white",italic:0b,text:" Barreira",underlined:0b}],italic:1b,text:"Aplicar",underlined:1b}]
clear @p[scores={place_command_block=1..},tag=Admin] ghast_tear[minecraft:item_name={bold:0b,color:"white",extra:[{bold:1b,color:"blue",italic:0b,text:"Z",underlined:1b}],italic:0b,text:"Eixo ",underlined:0b}]
clear @p[scores={place_command_block=1..},tag=Admin] iron_nugget[minecraft:item_name={bold:0b,color:"white",extra:[{bold:1b,color:"red",italic:0b,text:"X",underlined:1b}],italic:0b,text:"Eixo ",underlined:0b}]
clear @p[scores={place_command_block=1..},tag=Admin] command_block[minecraft:item_name={color:"white",extra:[{bold:1b,italic:1b,text:"Centro da Barreira",underlined:1b}],italic:0b,text:"Reposicionar o "}]
clear @p[scores={place_command_block=1..},tag=Admin] command_block[minecraft:item_name={bold:1b,color:"gold",extra:[{bold:0b,color:"white",italic:0b,text:" Barreira",underlined:0b}],italic:0b,text:"Aleatorizar",underlined:1b}]
clear @p[scores={place_command_block=1..},tag=Admin] spyglass 1
clear @p[scores={place_command_block=1..},tag=Admin] firework_rocket 1
clear @p[scores={place_command_block=1..},tag=Admin] barrier 1

scoreboard players reset * place_command_block
scoreboard players enable * Opcoes

function hns:setup/setup

kill @e[type=minecraft:text_display,tag=centro]
kill @s[type=minecraft:text_display]

scoreboard objectives remove Xaxis
scoreboard objectives remove Zaxis
scoreboard objectives remove increaseBorder
scoreboard objectives remove decreaseBorder

scoreboard objectives setdisplay sidebar

execute store result storage border_saves current_border.x int 1 run scoreboard players get CentroX Diametro
execute store result storage border_saves current_border.z int 1 run scoreboard players get CentroZ Diametro
execute store result storage border_saves current_border.size int 1 run worldborder get

tellraw @a[tag=Admin] [{"text":"Centro da Borda de Mundo Aplicada Para ","color":"white"},{"text":"X: ","color":"blue","bold":true,"underlined":true},{"score":{"name":"CentroX","objective":"Diametro"},"color":"blue","bold":true,"underlined":true},{"text":" e "},{"text":"Z: ","color":"red","bold":true,"underlined":true},{"score":{"name":"CentroZ","objective":"Diametro"},"color":"red","bold":true,"underlined":true},{"text":" Com Diâmetro de "},{"score":{"name":"Blocos","objective":"Diametro"},"color":"yellow"},{"text":" Blocos."}]

schedule clear hns:setup/barrier/loop/edit
setblock ~ ~ ~ air
