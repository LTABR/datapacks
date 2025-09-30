execute store result score .absorption Opcoes run data get storage options ingame.absorption

tellraw @s {"text":"-----------","color":"gold"}
execute if score .absorption Opcoes matches 255 run tellraw @s [{"text":"Escondedores","color":"dark_green","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false},{"text":"Absorção ","color":"white","bold":false,"underlined":false},{"text":"Desativada","color":"red","bold":false,"underlined":true},{"text":".","color":"white","bold":false,"underlined":false}]
execute if score .absorption Opcoes matches ..254 run tellraw @s [{"text":"Escondedores","color":"dark_green","bold":true,"underlined":true},{"text":": Nível ","color":"white","bold":false,"underlined":false},{"score":{"name":".absorption","objective":"Opcoes"},"color":"gold","bold":false},{"text":" de Absorção.","color":"white","bold":false,"underlined":false}]
tellraw @s [{"color":"gray","text":"Valor Padrão: "},{"color":"red","text":"Desativado","underlined":true},"   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/absorption/increase_absorption"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+1]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/absorption/decrease_absorption"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-1]"}]
tellraw @s {"text":"-----------","color":"gold"}

scoreboard players reset .absorption Opcoes
