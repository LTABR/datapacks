data merge entity @s {Tags:["destination"],Glowing:1b,view_range:0.15f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,2f,1f]},block_state:{Name:"minecraft:glass"}}
team join Escondedores @s

scoreboard players reset @p chorus

scoreboard players add @e[type=block_display,tag=destination] chorus 1

schedule function hns:gadgets/chorus_fruit/kill_display 2s append
execute if entity @e[type=block_display,tag=destination,scores={chorus=0..}] run schedule function hns:gadgets/chorus_fruit/summon_display 1t
