title @a title {"text":"Quem irá procurar será","color":"white"}
execute if score .seekers Opcoes matches 2.. run title @a title {"text":"Os Procuradores Serão:","color":"white"}
title @a subtitle {"selector":"@r[gamemode=!spectator, tag=!spectating]","color":"red","bold":true,"italic":true,"underlined":true}
execute as @a at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 0.25 2

execute as @a at @s run schedule clear hns:timer/second
