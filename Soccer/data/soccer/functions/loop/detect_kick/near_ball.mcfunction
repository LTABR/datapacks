data modify storage kick Pos set from entity @p Pos
data modify storage kick ballPos set from entity @s Pos
execute store result score .player_x kick run data get storage minecraft:kick Pos[0] 1000.0
execute store result score .player_z kick run data get storage minecraft:kick Pos[2] 1000.0
execute store result score .ball_pos_x kick run data get storage minecraft:kick ballPos[0] 1000.0
execute store result score .ball_pos_z kick run data get storage minecraft:kick ballPos[2] 1000.0
scoreboard players operation .player_x kick -= .ball_pos_x kick
scoreboard players operation .player_z kick -= .ball_pos_z kick
scoreboard players operation .player_x kick *= .negative options
scoreboard players operation .player_z kick *= .negative options
