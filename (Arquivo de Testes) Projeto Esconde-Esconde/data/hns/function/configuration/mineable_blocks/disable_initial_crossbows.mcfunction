tellraw @a[tag=Admin] [{"text":""}]
tellraw @a[tag=Admin] [{"text":"Bestas Iniciais Desativadas.","bold": true,"color": "red","underlined": true}]
tellraw @a[tag=Admin] [{"text":""}]
tellraw @a[tag=Admin] [{"text":"(Não é Recomendado Remover Armas de Longo Alcance Pois Jogadores com Caixas de Colisão Menores que Blocos Intangíveis Não Poderão Ser Atingidos Com as Mãos.)","color": "red"}]
tellraw @a[tag=Admin] [{"text":""}]
tellraw @a[tag=Admin] [{"text": "Opcionalmente, Você Pode Ativar a Destruição de Blocos Intangíveis ","color":"dark_red","bold":false,"underlined":false},{"text":"Clicando Aqui.","color":"dark_red","bold": true,"underlined": true,"hover_event":{"action":"show_text","value":[{"text":"Ativar Destruição de Blocos Intangíveis","color":"dark_red"}]},"click_event":{"action":"run_command","command":"/function hns:configuration/mineable_blocks/set_mineable_blocks"}}]
scoreboard players set .initial_crossbows Opcoes 0
