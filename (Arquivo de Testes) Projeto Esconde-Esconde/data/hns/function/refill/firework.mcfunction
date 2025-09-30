execute as @a[team=Escondedores] if score @s prioridadefogos = .prioridadefogos prioridadefogos if score @s prioridadefogos matches 1.. run give @s minecraft:firework_rocket[minecraft:can_break=[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{blocks:"suspicious_gravel",nbt:"{item:{id:\"minecraft:ravager_spawn_egg\",count:1}}"}],minecraft:can_place_on={blocks:"#hns:all_blocks"},minecraft:tooltip_display={hidden_components:["minecraft:can_place_on"]}, minecraft:lore= [[{"text":"Garante ","color":"gray","italic":false},{"text":"1","color":"white","italic":true},{"text":" Ponto ao Utilizar."}]], minecraft:fireworks= {flight_duration: 3b}, custom_data={taunt: 1b}]
stopsound @a[distance=..15] * minecraft:entity.item.pickup
scoreboard players operation @a[team=Escondedores] Opcoes = .recargafogos Opcoes

execute store result storage firework slot int 1.0 run data get entity @s Inventory[{id:"minecraft:firework_rocket",components: {"minecraft:custom_data":{taunt: 1b}}}].Slot

execute as @s run function hns:refill/update_firework with storage minecraft:firework

execute as @a[team=Escondedores] if score @s prioridadefogos = .prioridadefogos prioridadefogos run scoreboard players set @s prioridadefogos 0
scoreboard players set .prioridadefogos prioridadefogos 0
