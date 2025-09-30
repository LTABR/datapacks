scoreboard players operation @e[type=minecraft:block_display,tag=alarm_trap,tag=!ready] alarm_trap = @s player_ids
execute as @e[type=minecraft:block_display,tag=alarm_trap,tag=!ready,limit=1,sort=nearest] run team join Procuradores @s
execute as @e[type=minecraft:block_display,tag=alarm_trap,tag=!ready,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run summon text_display ~ ~ ~ {Glowing:1b,view_range:0.05f,billboard:"center",see_through:1b,alignment:"center",Tags:["alarm_trap"],brightness:{sky:15,block:10},text:{"text":"Entrar Nesta Área Como um Escondedor Notifica um Procurador!","color":"dark_red"}}
execute as @e[type=minecraft:block_display,tag=alarm_trap,tag=!ready,limit=1,sort=nearest] run tag @s add ready
