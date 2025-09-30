# this runs at every match start (specifically at end_sorter)

execute store result score .total_players Opcoes run execute if entity @a[gamemode=!spectator]
execute unless score .pointer player_ids matches 1.. run scoreboard players operation .pointer player_ids = .total_players Opcoes
execute as @a[gamemode=!spectator] unless score @s player_ids matches 1.. run scoreboard players set @s player_ids 0
execute as @r[gamemode=!spectator,scores={player_ids=0}] run scoreboard players operation @s player_ids = .pointer player_ids
scoreboard players remove .pointer player_ids 1

execute unless score .pointer player_ids matches ..0 run schedule function hns:gadgets/teleporter_plate/set_player_ids 1t
execute if score .pointer player_ids matches ..0 run scoreboard players reset .pointer player_ids
