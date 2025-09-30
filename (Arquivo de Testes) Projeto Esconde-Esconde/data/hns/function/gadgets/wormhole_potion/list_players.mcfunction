advancement revoke @s only hns:use_wormhole_potion
tag @s add consumed_wormhole_potion

attribute @s minecraft:jump_strength base set 0
attribute @s minecraft:movement_speed base set 0

scoreboard objectives add wormhole_potion trigger
scoreboard players enable @s wormhole_potion

execute at @s unless entity @a[team=Procuradores,sort=nearest,tag=!consumed_wormhole_potion] run tellraw @s {"text":"Nenhum Aliado Alvo Foi Encontrado.","color":"red"}
execute at @s unless entity @a[team=Procuradores,sort=nearest,tag=!consumed_wormhole_potion] run give @s dragon_breath[minecraft:item_name= {color: "dark_gray", extra: [{color: "gray", text: "-", obfuscated: 1b}, {color: "dark_purple", underlined: 1b, text: "Poção Buraco de Minhoca", bold: 0b}, {text: "-", obfuscated: 1b}, "-"], text: "-", bold: 1b}, minecraft:lore= [{color: "gray", text: "Ao Consumir Esta Poção, Você Poderá se", italic: 0b}, {color: "gray", text: "Teletransportar a Um Aliado de Sua Escolha.", italic: 0b}], minecraft:attribute_modifiers= [{amount: -1.0d, id: "minecraft:1", slot: "hand", type: "minecraft:movement_speed", operation: "add_multiplied_base"}, {amount: -1.0d, id: "minecraft:1", slot: "hand", type: "minecraft:jump_strength", operation: "add_multiplied_base"}], minecraft:tooltip_display= {hidden_components: ["minecraft:attribute_modifiers"]}, minecraft:custom_data= {wormhole_potion: 1}, minecraft:consumable= {on_consume_effects: [{sound: "minecraft:block.amethyst_block.resonate", type: "minecraft:play_sound"}], sound: "minecraft:item.honey_bottle.drink", consume_seconds: 7.0f, has_consume_particles: 0b, animation: "drink"}]
execute at @s unless entity @a[team=Procuradores,sort=nearest,tag=!consumed_wormhole_potion] run return run tag @s remove consumed_wormhole_potion
execute at @s as @a[team=Procuradores,sort=nearest,tag=!consumed_wormhole_potion] run function hns:gadgets/wormhole_potion/player_option with storage wormhole_potion

tellraw @s ["              ",{"click_event":{"action":"run_command","command":"/trigger wormhole_potion set -1"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Clique Para Cancelar","color":"dark_red"}]},"text":"[Cancelar]","underlined":true}]
