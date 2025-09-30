$execute unless entity @s[predicate=hns:agachando] run summon mannequin ~ ~ ~ {attributes:[{id:"minecraft:waypoint_transmit_range",base:-1}],hide_description:true,profile:{name:$(playername)},Tags:["doll"],pose:"standing",immovable:false,Rotation:[$(rotation_x),$(rotation_y)],Motion:[$(motion_x),$(motion_y),$(motion_z)]}
$execute if entity @s[predicate=hns:agachando] run summon mannequin ~ ~ ~ {attributes:[{id:"minecraft:waypoint_transmit_range",base:-1}],hide_description:true,profile:{name:$(playername)},Tags:["doll"],pose:"crouching",immovable:false,Rotation:[$(rotation_x),$(rotation_y)],Motion:[$(motion_x),$(motion_y),$(motion_z)]}

execute if entity @s[team=Escondedores] run team join Escondedores @e[type=mannequin,limit=1,distance=..1,tag=doll]
execute if entity @s[team=Procuradores] run team join Procuradores @e[type=mannequin,limit=1,distance=..1,tag=doll]

# fazer com que o nome seja ocultado caso as opções do jogo esteja configurado para isso
# adicionar opções: nomes anônimos, esconder nomes de ambos os times