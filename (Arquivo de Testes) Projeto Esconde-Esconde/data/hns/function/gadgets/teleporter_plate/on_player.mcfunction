tag @s add trigger
tag @e[type=interaction,sort=nearest,limit=1,tag=teleporter_plate] add entrance
execute as @e[type=interaction,tag=teleporter_plate] if score @s teleportersLinks = @e[type=interaction,tag=entrance,limit=1] teleportersLinks at @s unless entity @p[distance=..0.75] run tag @s add exit

scoreboard players add .next teleporterPriority 1
scoreboard players operation @s teleporterPriority = .next teleporterPriority
scoreboard players operation @e[type=interaction,tag=exit,limit=1,sort=nearest] teleporterPriority = @s teleporterPriority

schedule function hns:gadgets/teleporter_plate/teleport 1s append

tag @e[type=interaction,sort=nearest,limit=1,tag=teleporter_plate] remove entrance

function hns:gadgets/teleporter_plate/animations/start
function hns:gadgets/teleporter_plate/animations/glyph/summon_text_displays
