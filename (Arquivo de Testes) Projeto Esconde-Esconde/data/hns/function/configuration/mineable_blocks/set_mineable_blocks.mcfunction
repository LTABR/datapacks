execute if score .initial_crossbows Opcoes matches 1..2 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}
execute if score .initial_crossbows Opcoes matches 1..2 run tellraw @a[tag=Admin] [{"text": "As Bestas Iniciais Estão ","color": "gray","bold": true},{"text": "Ativadas","color": "green","bold": true,"underlined": true},{"text": ", a Destruição de Blocos Intangíveis Não Precisa Ser Ativada.","color": "gray","bold": true}]
execute if score .initial_crossbows Opcoes matches 1..2 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}
execute if score .initial_crossbows Opcoes matches 1..2 run return run scoreboard players set .mineable_blocks Opcoes 0

execute if score .mineable_blocks Opcoes matches 0 run scoreboard players set .mineable_blocks Opcoes 2
execute if score .mineable_blocks Opcoes matches 1 run scoreboard players set .mineable_blocks Opcoes -1

execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":" Agora Poderão Quebrar APENAS os Seguintes Tipos de Blocos:","color":"red","bold":false,"underlined":false}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Plantas","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Mudas, Sementes, Canas de Açúcar, Vinhas, Bagas, Gramas, Flores Pequenas e Altas, Plantaformas, Arbustos Secos, Cogumelos, Fungos, Raízes e Algas"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Linhas e Teias","color":"gray","underlined":true}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Andaimes","color":"gray","underlined":true}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Bandeiras","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Bandeiras no Chão e em Paredes"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Botões e Alavancas","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Botões de Madeira e de Pedra e Alavancas"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Portas, Alçapões e Portões Ativados","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Portas de Ferro e Madeira, Alçapões de Ferro e Madeira, e Portões Abertos Podem Ser Atravessados Quando Ativados Dentro de Jogadores"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Trilhos","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Trilhos Comuns, Trilhos Ativadores, Trilhos Detectores, Trilhos Elétricos São Maiores Que Jogadores Com o Menor Tamanho Possível"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Tochas","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Tochas, Tochas das Almas, Tochas de Redstone e Tochas na Parede"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Neve Fofa","color":"gray","underlined":true}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text": "   "},{"text":"- Corais","color":"gray","underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Corais Vivos e Mortos, Corais de Parede"}]}}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] {"text":""}
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] [{"text":"Escondedores Menores Que Estes Blocos "},{"text": "São Atingíveis Apenas Com Projéteis","underlined": true},{"text":" no Modo Aventura."}]
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] {"text":""}
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/function hns:configuration/mineable_blocks/set_mineable_blocks"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Reverter Opção","color":"green"}]},"text":"Clique Aqui Caso Queira Reverter Esta Opção.","underlined":true}
execute if score .mineable_blocks Opcoes matches 2 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}

execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] [{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":" Não","color":"red","bold":false,"underlined":false},{"text":" Poderão Mais Danificar o Mapa.","color":"gray","bold":false,"underlined":false}]
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] [{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":" Não","color":"red","bold":false,"underlined":false},{"text":" Poderão Mais Atingir Escondedores Dentro de Blocos Intangíveis Menores Que Eles Com as Mãos.","color":"gray","bold":false,"underlined":false}]
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] {"text":""}
execute if score .mineable_blocks Opcoes matches -1 if score .initial_crossbows Opcoes matches 0 run tellraw @a[tag=Admin] [{"text":"Isso Poderá Ser Resolvido ","color":"white","bold":false,"underlined":false},{"text":"Ativando as Bestas Iniciais","color":"red","bold":true,"underlined":false},{"text":".   ","color":"white","bold":false,"underlined":false},{"text":"[Ativar]","color":"green","bold":false,"underlined":true,"hover_event":{"action":"show_text","value":[{"text":"Ativar Bestas Iniciais","color": "green"}]},"click_event":{"action":"run_command","command":"/function hns:configuration/mineable_blocks/enable_initial_crossbows"}}]
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] {"text": ""}
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] {"click_event":{"action":"run_command","command":"/function hns:configuration/mineable_blocks/set_mineable_blocks"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Reverter Opção","color":"green"}]},"text":"Clique Aqui Caso Queira Reverter Esta Opção.","underlined":true}
execute if score .mineable_blocks Opcoes matches -1 run tellraw @a[tag=Admin] {"text": "-----------","color": "gold"}

execute if score .mineable_blocks Opcoes matches 2 run scoreboard players set .mineable_blocks Opcoes 1
execute if score .mineable_blocks Opcoes matches -1 run scoreboard players set .mineable_blocks Opcoes 0
