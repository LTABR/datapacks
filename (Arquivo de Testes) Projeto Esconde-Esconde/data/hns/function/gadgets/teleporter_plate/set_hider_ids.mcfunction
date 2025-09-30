# this runs at every match start (specifically at end_sorter)

execute store result score .qtdEscondedores Opcoes run execute if entity @a[team=Escondedores]
execute unless score .pointer hiderIds matches 1.. run scoreboard players operation .pointer hiderIds = .qtdEscondedores Opcoes
execute as @a[team=Escondedores] unless score @s hiderIds matches 1.. run scoreboard players set @s hiderIds 0
execute as @r[team=Escondedores,scores={hiderIds=0}] run scoreboard players operation @s hiderIds = .pointer hiderIds
scoreboard players remove .pointer hiderIds 1

execute unless score .pointer hiderIds matches ..0 run schedule function hns:gadgets/teleporter_plate/set_hider_ids 1t
execute if score .pointer hiderIds matches ..0 run scoreboard players reset .pointer hiderIds
