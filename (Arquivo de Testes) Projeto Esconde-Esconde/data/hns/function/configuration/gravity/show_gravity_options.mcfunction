execute store result score .gravity Opcoes run data get storage options ingame.gravity

tellraw @s {"text":"-----------","color":"gold"}
tellraw @s {"text":"(Lembre-se Que a Gravidade Também Afeta a Altura do Pulo)","color":"gray"}
tellraw @s {"text":""}
tellraw @s [{"text":"Gravidade Definida: ","color":"white"},{"nbt":"ingame.gravity","storage": "options","color":"gold","bold":false,"underlined":false},{"text":".","color":"white"}]
tellraw @s [{"color":"gray","text":"Valor Padrão: "},{"click_event":{"action":"run_command","command":"/data merge storage options {ingame:{gravity:0.08}}"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}],"value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"0.08","underlined":true},"   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/gravity/increase_gravity"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+1]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/gravity/decrease_gravity"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-1]"}]
tellraw @s {"text":""}
tellraw @s {"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/jump_strength/calculate_jump_heights"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Recalcular Pulo","color":"yellow"}],"value":[{"text":"Recalcular Pulo","color":"yellow"}]},"text":"[Recalcular Altura do Pulo em Blocos]","underlined":true}
tellraw @s {"text":"-----------","color":"gold"}
