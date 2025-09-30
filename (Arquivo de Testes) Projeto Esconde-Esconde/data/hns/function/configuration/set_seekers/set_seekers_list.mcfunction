team leave @a[team=!moderador]

tellraw @a[tag=Admin] {"text": "------------------------------","color": "gold"}
tellraw @a[tag=Admin] {"bold":true,"click_event":{"action":"run_command","command":"/function hns:configuration/set_seekers/reset_manual_seekers"},"color":"dark_red","hover_event":{"action":"show_text","value":[{"text":"Redefinir Todos os Procuradores Manuais.","color":"red"}],"value":[{"text":"Redefinir Todos os Procuradores Manuais","color":"red"}]},"text":"Redefinir Todos os Procuradores Manuais","underlined":true}
tellraw @a[tag=Admin] {"text": " "}
tellraw @a[tag=Admin] {"text": "Lista de Jogadores:","bold": true}

scoreboard objectives remove playerCounter
function hns:configuration/set_seekers/group_selected
function hns:configuration/set_seekers/group_unselected
data remove storage players count

tellraw @a[tag=Admin] {"text": " "}
tellraw @a[tag=Admin] ["Quantidade de Procuradores Iniciais: ",{"click_event":{"action":"run_command","command":"/function hns:configuration/set_seekers/increase_seekers"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Incrementar","color":"green"}],"value":[{"text":"Incrementar","color":"green"}]},"text":"+ "},{"bold":true,"color":"yellow","score":{"name":".seekers","objective":"Opcoes"},"underlined":true},{"click_event":{"action":"run_command","command":"/function hns:configuration/set_seekers/decrease_seekers"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":" -"}]
tellraw @a[tag=Admin] {"text": "(Defina Essa Quantidade ou Menos)","color": "red"}
tellraw @a[tag=Admin] {"text": " "}

execute if score .manual_seekers Opcoes matches 1 run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/function hns:configuration/set_seekers/set_seekers_false"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Desativar Procuradores Manuais Sem Redefinir os Atuais.","color":"red"}],"value":[{"text":"Desativar Procuradores Manuais Sem Redefinir os Atuais.","color":"red"}]},"text":"[Desativar Procuradores Manuais]","underlined":true}
execute if score .manual_seekers Opcoes matches 0 run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/function hns:configuration/set_seekers/set_seekers_true"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Ativar Procuradores Manuais.","color":"green"}],"value":[{"text":"Ativar Procuradores Manuais.","color":"green"}]},"text":"[Ativar Procuradores Manuais]","underlined":true}

tellraw @a[tag=Admin] {"text": "------------------------------","color": "gold"}
