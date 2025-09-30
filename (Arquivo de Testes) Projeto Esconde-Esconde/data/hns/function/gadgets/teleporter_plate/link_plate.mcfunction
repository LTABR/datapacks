scoreboard players add .pointer teleportersLinks 1
scoreboard players operation @s teleportersLinks = .pointer teleportersLinks
scoreboard players operation @e[sort=nearest,type=interaction,limit=1] teleportersLinks = @s teleportersLinks
scoreboard players reset @e[sort=nearest,type=interaction,limit=1] teleporterPlate
scoreboard players reset @s teleporterPlate
