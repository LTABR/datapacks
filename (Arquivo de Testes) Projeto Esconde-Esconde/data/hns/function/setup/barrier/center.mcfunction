kill @e[type=minecraft:text_display,tag=centro]
summon text_display ~ ~ ~ {text:"Centro da Barreira", billboard:"center", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}, see_through:true, Tags:["centro"], view_range:10, line_width:50}
worldborder center ~ ~
execute rotated as @p[tag=Admin,scores={place_command_block=1..}] run setworldspawn ~ ~ ~ ~ 0

scoreboard players reset * place_command_block

execute as @e[type=text_display,tag=centro] at @s run setblock ~ ~ ~ air
