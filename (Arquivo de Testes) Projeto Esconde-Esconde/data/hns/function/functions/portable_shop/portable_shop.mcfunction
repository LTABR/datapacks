clear @s emerald[minecraft:custom_data={shop:1}]
item replace entity @s weapon.mainhand with minecraft:emerald[minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers"]},attribute_modifiers=[{display: {type: "default"}, type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"1",slot:"mainhand"},{display: {type: "default"}, type:"jump_strength",amount:-1,operation:"add_multiplied_base",id:"1",slot:"mainhand"},{display: {type: "default"}, type:"movement_speed",amount:-1,operation:"add_multiplied_base",id:"1",slot:"mainhand"}],minecraft:consumable={},minecraft:item_name={"text":"Abrir Loja","color":"gold","bold":true,"italic":true,"underlined":true},lore=[[{"text":"Segure ","color":"gray","italic":false},{"keybind":"key.use","color":"white","italic":false,"underlined":true},{"text":" Com Este Item","color":"gray","italic":false}],{"text":"em Mãos Para Abrir a Loja.","color":"gray","italic":false}],minecraft:custom_data={shop:1}]

execute if entity @s[team=Escondedores,tag=!shop] positioned as @s anchored eyes run summon villager ^ ^ ^ {Silent: 1b, fall_distance: 0f, PortalCooldown: 0, Team: "Escondedores", FallFlying: 0b, NoAI: 1b, AbsorptionAmount: 0f, Health: 1f, LastRestock: 0, Xp: 0, Age: 0, ForcedAge: 0, attributes: [{id:"scale",base:0.1},{id: "max_health", base: 1}, {id: "follow_range", base: 10}], VillagerData: {level: 5, profession: "minecraft:armorer", type: "minecraft:plains"}, Offers: {Recipes: []}, Tags: ["loja_escondedor","shop"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:199999980,show_particles:0b}],CustomName:[{"text":"-","color":"dark_green","bold":true,"italic":false},{"text":"Loja","color":"gold","bold":true,"italic":false},{"text":"-","color":"dark_green","bold":true,"italic":false}]}
execute if entity @s[team=Procuradores,tag=!shop] positioned as @s anchored eyes run summon villager ^ ^ ^ {Silent: 1b, fall_distance: 0f, PortalCooldown: 0, Team: "Procuradores", PersistenceRequired: 1b, NoAI: 1b, CanPickUpLoot: 1b, AbsorptionAmount: 0f, Health: 1f, LastRestock: 0, Xp: 0, Age: 0, ForcedAge: 0, attributes: [{id:"scale",base:0.1},{id: "max_health", base: 1}, {id: "follow_range", base: 10}], VillagerData: {level: 5, profession: "minecraft:armorer", type: "minecraft:desert"}, Offers: {Recipes: []}, Tags: ["loja_procurador","shop"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:199999980,show_particles:0b}],CustomName:[{"text":"-","color":"dark_red","bold":true,"italic":false},{"text":"Loja","color":"gold","bold":true,"italic":false},{"text":"-","color":"dark_red","bold":true,"italic":false}]}

tag @s add shop

attribute @s minecraft:jump_strength base set 0

execute if entity @s[team=Escondedores] unless score @s interact_villager matches 1.. positioned as @s anchored eyes run tp @e[type=villager,limit=1,sort=nearest,tag=loja_escondedor,distance=..2] ^ ^ ^
execute if entity @s[team=Procuradores] unless score @s interact_villager matches 1.. positioned as @s anchored eyes run tp @e[type=villager,limit=1,sort=nearest,tag=loja_procurador,distance=..2] ^ ^ ^

scoreboard players reset @s interact_villager
advancement revoke @s only hns:use_portable_shop
function hns:functions/portable_shop/clear_portable_shop_hiders
function hns:functions/portable_shop/clear_portable_shop_seekers
