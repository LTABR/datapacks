execute store result score .seekers_scale Opcoes run data get storage options seekers.scale

scoreboard players set .default_size Opcoes 180
scoreboard players set .default_sneak Opcoes 150

execute store result score .hiders_sneak Opcoes store result score .hiders_size Opcoes run data get storage minecraft:options hiders.scale 100.0
scoreboard players operation .hiders_size Opcoes *= .default_size Opcoes
scoreboard players operation .hiders_sneak Opcoes *= .default_sneak Opcoes
execute store result storage placeholder hiders_sneak double 0.0001 run scoreboard players get .hiders_sneak Opcoes
execute store result storage placeholder hiders_size double 0.0001 run scoreboard players get .hiders_size Opcoes

execute store result score .seekers_sneak Opcoes store result score .seekers_size Opcoes run data get storage minecraft:options seekers.scale 100.0
scoreboard players operation .seekers_size Opcoes *= .default_size Opcoes
scoreboard players operation .seekers_sneak Opcoes *= .default_sneak Opcoes
execute store result storage placeholder seekers_sneak double 0.0001 run scoreboard players get .seekers_sneak Opcoes
execute store result storage placeholder seekers_size double 0.0001 run scoreboard players get .seekers_size Opcoes

tellraw @s {"text":"-----------","color":"gold"}
tellraw @s [{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false}]
tellraw @s [{"text":"   "},{"nbt":"seekers_size","storage": "placeholder","color":"gold","bold":false,"underlined": true},{"text":" Bloco(s) de Altura em Pé","color":"white","bold":false,"underlined":false}]
tellraw @s [{"text":"   "},{"nbt":"seekers_sneak","storage": "placeholder","color":"gold","bold":false,"underlined": true},{"text":" Bloco(s) de Altura Agachado","color":"white","bold":false,"underlined":false}]
tellraw @s [{"color":"gray","text":"Valores Padrão: "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/reset_seekers_scale"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}],"value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"1.8","underlined":true},{"color":"gray","text":" e "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/reset_seekers_scale"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"1.5","underlined":true},"   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/increase_seekers_scale"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+0.9]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/decrease_seekers_scale"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-0.9]"}]

execute store result score .seekers_scale Opcoes run data get storage options seekers.scale 100
execute if score .seekers_scale Opcoes matches ..50 run tellraw @s {"text":"(Não é Recomendado Diminuir Mais o Tamanho dos Procuradores Pois a Caixa de Colisão do Personagem Ultrapassará o Tamanho da Câmera, Possibilitando os Procuradores a Olharem Através de Superfícies ao Colidirem Nelas.)","color":"red","bold":true,"underlined":true}

tellraw @s {"text":" "}
tellraw @s [{"text":"Escondedores","color":"dark_green","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false}]
tellraw @s [{"text":"   "},{"nbt":"hiders_size","storage": "placeholder","color":"gold","bold":false,"underlined": true},{"text":" Bloco(s) de Altura em Pé","color":"white","bold":false,"underlined":false}]
tellraw @s [{"text":"   "},{"nbt":"hiders_sneak","storage": "placeholder","color":"gold","bold":false,"underlined": true},{"text":" Bloco(s) de Altura Agachado","color":"white","bold":false,"underlined":false}]
tellraw @s [{"color":"gray","text":"Valores Padrão: "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/reset_hiders_scale"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}],"value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"1.8","underlined":true},{"color":"gray","text":" e "},{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/reset_hiders_scale"},"color":"dark_aqua","hover_event":{"action":"show_text","value":[{"text":"Redefinir","color":"dark_aqua"}]},"text":"1.5","underlined":true},"   ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/increase_hiders_scale"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Aumentar","color":"green"}],"value":[{"text":"Aumentar","color":"green"}]},"text":"[+0.9]"},"     ",{"click_event":{"action":"run_command","command":"/function hns:configuration/ingame_attributes/scale/decrease_hiders_scale"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Diminuir","color":"red"}],"value":[{"text":"Diminuir","color":"red"}]},"text":"[-0.9]"}]

execute store result score .hiders_scale Opcoes run data get storage options hiders.scale 100
execute if score .hiders_scale Opcoes matches ..55 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons run tellraw @s [{"text":"(Não é Recomendado Diminuir Mais o Tamanho dos Escondedores Sem Armas de Longo Alcance Pois Jogadores com Caixas de Colisão Menores que Blocos Intangíveis Não Poderão Ser Atingidos Com as Mãos.)","bold": true,"color": "red","underlined": true}]
execute if score .hiders_scale Opcoes matches ..55 if score .initial_crossbows Opcoes matches 0 unless function hns:configuration/ingame_attributes/scale/check_if_ranged_weapons run tellraw @s [{"text": "Opcionalmente, Você Pode Ativar a Destruição de Blocos Intangíveis ","color":"dark_red","bold":false,"underlined":false},{"text":"Clicando Aqui.","color":"dark_red","bold": true,"underlined": true,"hover_event":{"action":"show_text","value":[{"text":"Ativar Destruição de Blocos Intangíveis","color":"dark_red"}]},"click_event":{"action":"run_command","command":"/function hns:configuration/mineable_blocks/set_mineable_blocks"}}]

tellraw @s {"text":"-----------","color":"gold"}

scoreboard players reset .hiders_scale Opcoes
scoreboard players reset .seekers_scale Opcoes

scoreboard players reset .hiders_size Opcoes
scoreboard players reset .hiders_sneak Opcoes
scoreboard players reset .seekers_size Opcoes
scoreboard players reset .seekers_sneak Opcoes
scoreboard players reset .default_size Opcoes
scoreboard players reset .default_sneak Opcoes
data remove storage minecraft:placeholder hiders_sneak
data remove storage minecraft:placeholder hiders_size
data remove storage minecraft:placeholder seekers_sneak
data remove storage minecraft:placeholder seekers_size

function hns:configuration/ingame_attributes/scale/calculate_crouch_height
