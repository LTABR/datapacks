scoreboard players operation .max_jump_seekers Opcoes -= .start Opcoes
scoreboard players operation .max_jump_hiders Opcoes -= .start Opcoes

tellraw @a[tag=Admin] [{"text":"  ","color":"white","bold":false,"underlined":false},{"text":"Procuradores","color":"dark_red","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false},{"score":{"name":".max_jump_seekers","objective":"Opcoes"},"color":"yellow","bold":false,"underlined":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false,"underlined":false}]}},{"text":" Bloco(s)   ","color":"white","bold":false,"underlined":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false,"underlined":false}]}},{"text":"Escondedores","color":"dark_green","bold":true,"underlined":true},{"text":": ","color":"white","bold":false,"underlined":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false,"underlined":false}]}},{"score":{"name":".max_jump_hiders","objective":"Opcoes"},"color":"yellow","bold":false,"underlined":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false,"underlined":false}]}},{"text":" Bloco(s)","color":"white","bold":false,"underlined":false,"hover_event":{"action":"show_text","value":[{"text":"","bold":false,"underlined":false}]}}]

scoreboard players reset .max_jump_seekers Opcoes
scoreboard players reset .max_jump_hiders Opcoes
scoreboard players reset .jump_seekers Opcoes
scoreboard players reset .jump_hiders Opcoes
scoreboard players reset .start Opcoes
scoreboard players reset .gravity Opcoes
