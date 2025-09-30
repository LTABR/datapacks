execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1] if entity @s[tag=!placing] at @s run fill ~ ~1 ~1 ~ ~1 ~-1 minecraft:cobweb
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1] if entity @s[tag=!placing] at @s run fill ~1 ~1 ~ ~-1 ~1 ~ minecraft:cobweb
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1] if entity @s[tag=!placing] at @s run playsound minecraft:block.tripwire.detach player @a ~ ~ ~ 0.25 0.7
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1] if entity @s[tag=!placing] at @s run kill @s
execute if block ~ ~ ~ minecraft:heavy_weighted_pressure_plate[power=1] if entity @s[tag=!placing] at @s run return run setblock ~ ~ ~ minecraft:cobweb destroy

execute unless block ~ ~ ~ air unless block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run summon item ~ ~ ~ {Item:{count:1b,id:"minecraft:slime_spawn_egg",components:{"minecraft:can_place_on":{blocks:"#hns:all_valid_blocks"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]},"minecraft:entity_data":{Tags:["cobweb_trap","placing"],height:0.1f,id:"minecraft:interaction",width:0.5f},"minecraft:lore":[{"text":"Define o local de uma Armadilha de Teia.","color":"gray","italic":false},{"text":"- Escondedores podem quebrá-los.","color":"red","italic":true,"underlined":true}],"minecraft:item_name":[{"text":"-","color":"gray","bold":true,"italic":false,"underlined":false},{"text":"Armadilha de Teia","color":"white","bold":true,"italic":false,"underlined":true},{"text":"-","color":"gray","bold":true,"italic":false,"underlined":false}]}}}
execute unless block ~ ~ ~ air unless block ~ ~ ~ minecraft:heavy_weighted_pressure_plate run return run kill @s

execute if block ~ ~ ~ air unless block ~ ~ ~ minecraft:cobweb if entity @s[tag=placing] run setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate
execute if block ~ ~ ~ air unless block ~ ~ ~ minecraft:cobweb if entity @s[tag=!placing] run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 0.25 0
execute if block ~ ~ ~ air unless block ~ ~ ~ minecraft:cobweb if entity @s[tag=!placing] run return run kill @s

execute if entity @s[tag=placing] run return run tag @s remove placing
