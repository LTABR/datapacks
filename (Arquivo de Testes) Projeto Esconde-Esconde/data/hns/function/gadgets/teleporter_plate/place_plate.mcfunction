execute unless block ~ ~0.5 ~ air run summon item ~ ~ ~ {Item:{id:"minecraft:warden_spawn_egg",count:1b,components:{"minecraft:can_place_on":{blocks:"#hns:all_blocks"},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]},"minecraft:tooltip_display":{hidden_components:["minecraft:can_place_on"]},"minecraft:entity_data":{Tags:["preparing"],height:1.1f,id:"minecraft:interaction",width:1.1f},"minecraft:lore":[{"text":"Define o local de uma Placa de Teleporte.","color":"gray","italic":false},{"text":"São conectadas em pares.","color":"gray","italic":false},{"text":"- Gera ruídos quando teleportado.","color":"red","italic":true,"underlined":true},{"text":"- Procuradores podem utilizá-los.","color":"red","italic":true,"underlined":true},{"text":"- Procuradores podem quebrá-los.","color":"red","italic":true,"underlined":true}],"minecraft:item_name":{"text":"Placa de Teleporte","color":"light_purple","bold":true,"italic":false,"underlined":true}}}}
execute unless block ~ ~ ~ air run return run kill @s
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:sculk_shrieker
summon block_display ~ ~0.5 ~ {Tags:["plate"],block_state:{Name:"minecraft:anvil"},Rotation:[0.0,0.0]}
summon item_display ~ ~1.85 ~ {Tags:["plate2"],block_state:{Name:"minecraft:skeleton_skull"},Rotation:[0.0,0.0]}
summon item_display ~ ~0.5 ~ {Tags:["plate3"],block_state:{Name:"minecraft:ender_eye"},Rotation:[0.0,0.0]}

scoreboard players operation @s teleporterPlate = @a[scores={teleporterPlate=1..},sort=nearest,limit=1] player_ids
scoreboard players reset @a[scores={teleporterPlate=1..},sort=nearest,limit=1] teleporterPlate

execute as @e[type=interaction,tag=teleporter_plate] if score @s teleporterPlate = @e[sort=nearest,type=interaction,limit=1] teleporterPlate run function hns:gadgets/teleporter_plate/link_plate

tag @s add teleporter_plate
tag @s remove preparing

schedule function hns:gadgets/teleporter_plate/update_entities 1t
