team leave @a[team=!moderador]

tellraw @a[tag=Admin] {"text": "------------------------------","color": "gold"}
tellraw @a[tag=Admin] {"bold":true,"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/reset_teams"},"color":"dark_red","hover_event":{"action":"show_text","value":[{"text":"Redefinir Todas as Equipes.","color":"red"}],"value":[{"text":""}]},"text":"Redefinir Todas as Equipes","underlined":true}
tellraw @a[tag=Admin] " "
tellraw @a[tag=Admin] {"text": "Lista de Jogadores:","bold": true}
tellraw @a[tag=Admin] " "

function hns:configuration/set_shared_lives/group_teams
function hns:configuration/set_shared_lives/group_singles
data remove storage players count

execute unless score .currentTeam shared_lives matches 1.. run scoreboard players set .currentTeam shared_lives 1

tellraw @a[tag=Admin] " "
tellraw @a[tag=Admin] {"text": "Clique em Alguém Para"}
tellraw @a[tag=Admin] [{"bold":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false}],"value":[{"text":""}]},"text":"Adicionar à Equipe: "},{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/increase_current_team"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Incrementar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"+ "},{"bold":true,"color":"yellow","score":{"name":".currentTeam","objective":"shared_lives"},"underlined":true},{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/decrease_current_team"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":" -"}]
tellraw @a[tag=Admin] {"text": "(Clique Novamente Para Remover)","color":"dark_gray"}

tellraw @a[tag=Admin] " "
tellraw @a[tag=Admin] {"text": "(Defina Pelo Menos Duas Pessoas Por Equipe)","color": "red"}
tellraw @a[tag=Admin] " "

execute if score .shared_lives Opcoes matches 1 run tellraw @a[tag=Admin] [{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/set_shared_lives_list"},"color":"aqua","hover_event":{"action":"show_text","value":[{"text":"Atualizar Lista.","color":"aqua"}],"value":[{"text":"Atualizar Lista","color":"aqua"}]},"text":"[Atualizar]","underlined":true},{"text":"         ","underlined":false},{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/set_shared_lives_false"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Desativar Modo Duplas Sem Remover as Equipes.","color":"red"}],"value":[{"text":"Desativar Modo Duplas Sem Remover as Equipes.","color":"red"}]},"text":"[Desativar Modo Duplas]"}]
execute if score .shared_lives Opcoes matches 0 run tellraw @a[tag=Admin] [{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/set_shared_lives_list"},"color":"aqua","hover_event":{"action":"show_text","value":[{"text":"Atualizar Lista.","color":"aqua"}],"value":[{"text":"Atualizar Lista.","color":"aqua"}]},"text":"[Atualizar]","underlined":true},{"text":"         ","underlined":false},{"click_event":{"action":"run_command","command":"/function hns:configuration/set_shared_lives/set_shared_lives_true"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Ativar Modo Duplas.","color":"green"}],"value":[{"text":"Ativar Modo Duplas.","color":"green"}]},"text":"[Ativar Modo Duplas]"}]

tellraw @a[tag=Admin] ["           ",{"click_event":{"action":"run_command","command":"/function hns:functions/shared_lives/randomize_teams"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Aleatorizar Pessoas Sem Equipe.","color":"gold"}],"value":[{"text":"Aleatorizar Pessoas Sem Equipe.","color":"gold"}]},"text":"[Aleatorizar]","underlined":true}]

tellraw @a[tag=Admin] {"text": "------------------------------","color": "gold"}
