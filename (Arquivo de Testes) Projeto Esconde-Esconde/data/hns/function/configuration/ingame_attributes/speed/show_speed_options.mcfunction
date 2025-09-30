summon marker ~ ~ ~ {Tags:["configuration"]}

execute store result entity @e[limit=1,tag=configuration,type=marker] data.seekers_speed double 1.0 run data get storage options seekers.speed 1000.0
execute store result entity @e[limit=1,tag=configuration,type=marker] data.hiders_speed double 1.0 run data get storage options hiders.speed 1000.0
execute store result score .seekers_speed Opcoes run data get entity @e[limit=1,tag=configuration,type=marker] data.seekers_speed 1.0
execute store result score .hiders_speed Opcoes run data get entity @e[limit=1,tag=configuration,type=marker] data.hiders_speed 1.0
kill @e[type=marker,tag=configuration,limit=1,sort=nearest]

tellraw @s {"text":"-----------","color":"gold"}
tellraw @s [{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false},{"score":{"name":".seekers_speed","objective":"Opcoes"},"color":"gold","bold":false},{"text":"% da Velocidade Total.","color":"white","bold":false,"underlined":false}]
tellraw @s [{"color":"gray","text":"Valor Padrão: "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/reset_seekers_speed"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}],"value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"100","underlined":true},"%   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/increase_seekers_speed"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+5%]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/decrease_seekers_speed"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-5%]"}]
tellraw @s " "
tellraw @s [{"text":"Escondedores","color":"dark_green","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false},{"score":{"name":".hiders_speed","objective":"Opcoes"},"color":"gold","bold":false},{"text":"% da Velocidade Total.","color":"white","bold":false,"underlined":false}]
tellraw @s [{"color":"gray","text":"Valor Padrão: "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/reset_hiders_speed"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}],"value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"100","underlined":true},"%   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/increase_hiders_speed"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+5%]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/speed/decrease_hiders_speed"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-5%]"}]
tellraw @s {"text":"-----------","color":"gold"}

execute store result storage options hiders.speed_string int 1.0 run scoreboard players get .hiders_speed Opcoes
execute store result storage options seekers.speed_string int 1.0 run scoreboard players get .seekers_speed Opcoes
