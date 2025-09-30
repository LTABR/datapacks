kill @e[type=minecraft:text_display,tag=centro]
summon text_display ~ ~ ~ {text:"Centro da Barreira", billboard:"center", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}, see_through:true, Tags:["centro"], view_range:10, line_width:50}
execute as @e[type=text_display,tag=centro] at @s run setblock ~ ~ ~ air
worldborder center ~ ~
execute unless data storage border_saves current_border.size run worldborder set 121

execute as @a[tag=Admin] at @s if dimension hns:caveworld run worldborder set 71
gamemode adventure @a[tag=!Admin]

tellraw @a[tag=Admin] {"text":"==============================","color":"white"}

tellraw @a[tag=Admin] [{"click_event":{"action":"suggest_command","command":"/tp @e[type=text_display,tag=centro] X ~ Z"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Editar Coordenadas do Centro da Barreira","color":"white"}],"value":[{"text":"Editar Coordenadas do Centro da Barreira"}]},"text":"Clique Para Editar Eixos ","underlined":true},{"bold":true,"click_event":{"action":"suggest_command","command":"/tp @e[type=text_display,tag=centro] X ~ Z"},"color":"blue","hover_event":{"action":"show_text","value":[{"text":"Editar Coordenadas do Centro da Barreira","color":"white"}],"value":[{"text":""}]},"text":"X","underlined":true},{"click_event":{"action":"suggest_command","command":"/tp @e[type=text_display,tag=centro] X ~ Z"},"hover_event":{"action":"show_text","value":[{"text":"Editar Coordenadas do Centro da Barreira","color":"white"}],"value":[{"text":""}]},"text":" e "},{"bold":true,"click_event":{"action":"suggest_command","command":"/tp @e[type=text_display,tag=centro] X ~ Z"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Editar Coordenadas do Centro da Barreira","color":"white"}],"value":[{"text":""}]},"text":"Z","underlined":true}]

tellraw @a[tag=Admin] ""

$tellraw @a[tag=Admin] [{"click_event":{"action":"suggest_command","command":"/worldborder set $(size)"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Editar Tamanho da Barreira","color":"white"}]},"text":"Clique Para Editar ","underlined":true},{"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Editar Tamanho da Barreira","color":"white"}]},"text":"Diâmetro"},{"hover_event":{"action":"show_text","value":[{"text":"Editar Tamanho da Barreira","color":"white"}]},"text":" da Barreira"}]

tellraw @a[tag=Admin] {"text":"==============================","color":"white"}

scoreboard objectives add Xaxis minecraft.used:minecraft.iron_nugget
scoreboard objectives add Zaxis minecraft.used:minecraft.ghast_tear
scoreboard objectives add increaseBorder minecraft.dropped:minecraft.iron_nugget
scoreboard objectives add decreaseBorder minecraft.dropped:minecraft.ghast_tear
scoreboard objectives add Diametro dummy {"text":"Barreira","color":"dark_aqua","bold":true,"underlined":true}
scoreboard objectives modify Diametro numberformat styled {"color":"gold","bold":true}

scoreboard objectives setdisplay sidebar Diametro

clear @a[tag=Admin] *[!minecraft:custom_data~{book_save:1b},!minecraft:container,!minecraft:bundle_contents]
clear @a[tag=Admin] minecraft:ender_chest

give @a[tag=Admin] command_block[item_model="minecraft:target",minecraft:item_name= [{"text":"Reposicionar o ","color":"white","italic":false},{"text":"Centro da Barreira","bold":true,"italic":true,"underlined":true}], minecraft:lore= [{"text":"Coloque no Chão Para","color":"gray","italic":false}, {"text":"Reposicionar o ","color":"gray","italic":false}, [{"text":"Centro da Barreira","color":"white","bold":true,"italic":true,"underlined":true},{"text":".","color":"gray"}]], minecraft:block_entity_data= {id:"minecraft:command_block",Command: "function hns:setup/barrier/center", SuccessCount: 3, TrackOutput: 1b, powered: 0b, auto: 1b, conditionMet: 1b, UpdateLastExecution: 1b, LastExecution: 21634695, CustomName: {"text":"@"}}] 1

give @a[tag=Admin] iron_nugget[minecraft:consumable={consume_seconds:99999f},minecraft:food={can_always_eat:1b,nutrition:1,saturation:1.0f},minecraft:item_name= [{"text":"Eixo ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"X","color":"red","bold":true,"italic":false,"underlined":true}], minecraft:lore= [{"text":"Botão Direito:","color":"gray","italic":false,"underlined":true}, [{"text":"Na Mão Principal:  Eixo ","color":"gray","italic":false},{"text":"+X","color":"red","italic":false}], [{"text":"Na Mão Secundária: Eixo ","color":"gray","italic":false},{"text":"-X","color":"red","italic":false}], [{"text":"Quando Largado (Pressione ","color":"gray","italic":false,"underlined":true},{"keybind":"key.drop","color":"white","bold":true},{"text":"):","color":"gray","italic":false,"underlined":true}], [{"text":"MAIS","color":"green","bold":true,"italic":false,"underlined":true},{"text":" Um Bloco de Diâmetro","color":"gray","bold":false,"italic":false,"underlined":false}], {"text":"Para Cada Direção","color":"gray","italic":false}], minecraft:custom_data={axis: X}] 1

give @a[tag=Admin] ghast_tear[minecraft:consumable={consume_seconds:99999f},minecraft:food={can_always_eat:1b,nutrition:1,saturation:1.0f},minecraft:item_name= [{"text":"Eixo ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Z","color":"blue","bold":true,"italic":false,"underlined":true}], minecraft:lore= [{"text":"Botão Direito:","color":"gray","italic":false,"underlined":true}, [{"text":"Na Mão Principal:  Eixo ","color":"gray","italic":false},{"text":"+Z","color":"blue","italic":false}], [{"text":"Na Mão Secundária: Eixo ","color":"gray","italic":false},{"text":"-Z","color":"blue","italic":false}], [{"text":"Quando Largado (Pressione ","color":"gray","italic":false,"underlined":true},{"keybind":"key.drop","color":"white","bold":true},{"text":"):","color":"gray","italic":false,"underlined":true}], [{"text":"MENOS","color":"red","bold":true,"italic":false,"underlined":true},{"text":" Um Bloco de Diâmetro","color":"gray","bold":false,"italic":false,"underlined":false}], {"text":"Para Cada Direção","color":"gray","italic":false}], minecraft:custom_data={axis: Z}] 1

give @a[tag=Admin] command_block[item_model="minecraft:emerald_block",minecraft:item_name= [{"text":"Aplicar","color":"dark_green","bold":true,"italic":true,"underlined":true},{"text":" Barreira","color":"white","bold":false,"italic":false,"underlined":false}], minecraft:lore= [{"text":"Coloque no Chão Para","color":"gray","italic":false}, {"text":"Aplicar a","color":"gray","italic":false}, {"text":"Barreira Atual.","color":"gray","italic":false}], minecraft:block_entity_data= {id:"minecraft:command_block",Command: "execute summon text_display run function hns:setup/barrier/apply", SuccessCount: 3, TrackOutput: 1b, powered: 0b, auto: 1b, conditionMet: 1b, UpdateLastExecution: 1b, LastExecution: 21634695, CustomName: {"text":"@"}}] 1

execute as @a[tag=Admin] unless items entity @s container.* spyglass run give @a[tag=Admin] spyglass

execute as @a[tag=Admin] unless items entity @s container.* firework_rocket run give @a[tag=Admin] minecraft:firework_rocket

execute as @a[tag=Admin] unless items entity @s container.* barrier run give @a[tag=Admin] minecraft:barrier

give @a[tag=Admin] command_block[item_model="minecraft:lodestone",minecraft:item_name= [{"text":"Aleatorizar","color":"gold","bold":true,"italic":false,"underlined":true},{"text":" Barreira","color":"white","bold":false,"italic":false,"underlined":false}], minecraft:lore= [{"text":"Coloque no Chão Para","color":"gray","italic":false}, {"text":"Aleatorizar a Barreira.","color":"gray","italic":false}], minecraft:block_entity_data= {id:"minecraft:command_block",Command: "function hns:setup/barrier/random/randomize_barrier", SuccessCount: 3, TrackOutput: 1b, powered: 0b, auto: 1b, conditionMet: 1b, UpdateLastExecution: 1b, LastExecution: 21634695, CustomName: {"text":"@"}}] 1

execute as @a[tag=Admin] unless items entity @s armor.chest * run item replace entity @a[tag=Admin] armor.chest with minecraft:elytra

scoreboard players reset .total_rolls Diametro
scoreboard players reset .total_chunks Diametro
scoreboard players reset .chunk_x Diametro
scoreboard players reset .chunk_z Diametro

execute as @e[type=text_display,tag=centro,limit=1] at @s run data modify storage minecraft:border_saves current_border.dimension set from entity @p[tag=Admin] Dimension
function hns:setup/barrier/bring_players with storage border_saves current_border
function hns:setup/barrier/loop/edit

function hns:functions/clear_entities

execute as @e[type=minecraft:text_display,tag=spawnescondedores] at @s run fill ~ ~2 ~ ~ ~2 ~ air replace bell
execute as @e[type=minecraft:text_display,tag=spawnescondedores] at @s run forceload remove ~ ~
kill @e[type=minecraft:text_display,tag=spawnescondedores]
execute as @e[type=minecraft:text_display,tag=spawnprocuradores] at @s run forceload remove ~ ~
kill @e[type=minecraft:text_display,tag=spawnprocuradores]

scoreboard players reset * Diametro

scoreboard players display name CentroX Diametro [{"text":"Posição ","color":"white"},{"text":"X","color":"red","bold":true},{"text":":","color":"white"}]
scoreboard players display name CentroZ Diametro [{"text":"Posição ","color":"white"},{"text":"Z","color":"blue","bold":true},{"text":":","color":"white"}]
scoreboard players display name Blocos Diametro [{"text":"Diâmetro:","color":"white"}]
