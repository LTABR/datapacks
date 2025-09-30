give @s husk_spawn_egg[custom_data={husk:1b},tooltip_display={hidden_components:["can_place_on"]},can_place_on={blocks:"#hns:all_blocks"},item_name={"bold":true,"color":"yellow","italic":true,"text":"Husk Ajudante"},minecraft:lore= [[{"text":"Invoca Um Husk Aliado à Equipe ","color":"gray","italic":false},{"text":"Procuradores","color":"dark_red","bold":true,"italic":true},{"text":".","color":"gray"}], {"text":"Não Inflige Dano Aliado.","color":"gray","italic":false}],entity_data={id:"minecraft:husk",Tags:["husk_minion"],DeathLootTable:"hns:empty",Team:"Procuradores",CanPickUpLoot:0b,equipment:{head:{id:"minecraft:stone_button",count:1}},drop_chances:{head:0.000},attributes:[{id:"minecraft:max_health",base:0.1}]}] 2
scoreboard players operation @s Opcoes = recargahusk Opcoes

execute store result storage husk slot int 1.0 run data get entity @s Inventory[{id:"minecraft:husk_spawn_egg",components: {"minecraft:custom_data":{husk: 1b}}}].Slot

execute as @s run function hns:refill/update_husk with storage minecraft:husk

data remove storage husk slot
