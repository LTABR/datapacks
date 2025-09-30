execute if score .player_x kick matches 39.. run scoreboard players remove .player_x kick 40
execute if score .player_x kick matches ..-39 run scoreboard players add .player_x kick 40
execute if score .player_z kick matches 39.. run scoreboard players remove .player_z kick 40
execute if score .player_z kick matches ..-39 run scoreboard players add .player_z kick 40
execute if score .player_x kick matches -38..0 unless score .player_x kick matches -2..2 run scoreboard players add .player_x kick 3
execute if score .player_x kick matches 0..38 unless score .player_x kick matches -2..2 run scoreboard players remove .player_x kick 3
execute if score .player_z kick matches -38..0 unless score .player_z kick matches -2..2 run scoreboard players add .player_z kick 3
execute if score .player_z kick matches 0..38 unless score .player_z kick matches -2..2 run scoreboard players remove .player_z kick 3
