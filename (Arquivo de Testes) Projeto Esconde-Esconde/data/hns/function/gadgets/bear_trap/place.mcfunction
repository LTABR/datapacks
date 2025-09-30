execute unless block ~ ~ ~ air unless block ~ ~ ~ small_amethyst_bud run kill @s
execute unless block ~ ~ ~ air run give @p[scores={bear_trap=1..}] skeleton_horse_spawn_egg[minecraft:can_place_on={blocks:"#hns:all_blocks"},minecraft:tooltip_display={hidden_components:["minecraft:can_place_on"]},minecraft:entity_data={Tags:["bear_trap"],height:0.25f,id:"minecraft:interaction",width:0.51f},minecraft:lore=[{"text":"Posiciona Uma Armadilha Que Temporariamente","color":"gray","italic":false},{"text":"Atordoa e Causa Bastante Dano a um Procurador.","color":"gray","italic":false}],minecraft:item_name=[{"text":"-","color":"dark_gray","bold":true,"strikethrough":true,"obfuscated":true},{"text":"Armadilha de Urso","color":"white","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"-","color":"dark_gray","bold":true,"strikethrough":true,"obfuscated":true}]]

execute if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ small_amethyst_bud keep

scoreboard players reset * bear_trap
