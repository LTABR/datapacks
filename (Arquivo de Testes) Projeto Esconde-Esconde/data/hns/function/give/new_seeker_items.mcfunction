execute if score .shared_lives Opcoes matches 1 run function hns:functions/check_deaths_doubles

execute if score .shared_lives Opcoes matches 1 as @a[team=Escondedores,scores={shared_lives=1..,Mortes=1..}] run return run item replace entity @s armor.feet with air
execute if score .hiderToSeeker Opcoes matches 0 if entity @s[advancements={hns:hider_teamkill=true}] run scoreboard players reset @s Mortes
execute if score .hiderToSeeker Opcoes matches 0 if entity @s[advancements={hns:hider_teamkill=true}] run return run advancement revoke @s[advancements={hns:hider_teamkill=true}] only hns:hider_teamkill
execute if score .hiderToSeeker Opcoes matches 0 if entity @s[advancements={hns:hider_creeper_death=true}] run scoreboard players reset @s Mortes
execute if score .hiderToSeeker Opcoes matches 0 if entity @s[advancements={hns:hider_creeper_death=true}] run return run advancement revoke @s[advancements={hns:hider_creeper_death=true}] only hns:hider_creeper_death

# convert scores
scoreboard players add @s[advancements={hns:hider_to_seeker=true}] Mortes 1
scoreboard players reset @s[scores={Mortes=1..}] Abates

# particles on death
execute as @s[scores={Mortes=1..}] unless score @s shared_lives matches 1.. at @s store result storage minecraft:last_death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute as @s[scores={Mortes=1..}] unless score @s shared_lives matches 1.. at @s store result storage minecraft:last_death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute as @s[scores={Mortes=1..}] unless score @s shared_lives matches 1.. at @s store result storage minecraft:last_death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

execute as @p[tag=dead_hider] at @s store result storage minecraft:last_death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute as @p[tag=dead_hider] at @s store result storage minecraft:last_death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute as @p[tag=dead_hider] at @s store result storage minecraft:last_death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

execute as @s[scores={Mortes=1..}] at @s run summon minecraft:block_display ~ ~ ~ {Tags: ["last_death"]}

execute as @e[type=minecraft:block_display,tag=last_death,limit=1] at @s run data modify entity @s Pos set from storage minecraft:last_death Pos
execute at @e[type=minecraft:block_display,tag=last_death,limit=1] run function hns:functions/at_hider_death
kill @e[type=minecraft:block_display,tag=last_death]

tag @a remove dead_hider

# hider to spectator check
execute if score .hiderToSpectator Opcoes matches 1 as @s run return run function hns:functions/hider_to_spectator

# change teams
tag @a[team=Escondedores,advancements={hns:hider_to_seeker=true}] add convert_hider
team leave @a[tag=convert_hider]
execute if score .hiderToSeeker Opcoes matches 1 run team leave @s
execute if entity @a[team=!Escondedores,team=!Procuradores,gamemode=!spectator,tag=convert_hider] run tag @a[tag=convert_hider] remove convert_hider

execute if score .hiding Opcoes matches 0 as @e[type=minecraft:text_display,tag=spawnprocuradores] at @s run spawnpoint @a[scores={Mortes=1..}] ~ ~ ~
execute if score .hiderToSeeker Opcoes matches 1 if score .hiding Opcoes matches 1 in hns:shop run spawnpoint @a[scores={Mortes=1..}] 420 69 420

advancement revoke @a[advancements={hns:hider_to_seeker=true}] only hns:hider_to_seeker
advancement revoke @a[advancements={hns:hider_teamkill=true}] only hns:hider_teamkill

execute unless entity @a[team=Escondedores,gamemode=!spectator] run return run function hns:give/check_last_dead_hider

team join Procuradores @s
execute as @a[scores={Mortes=1..}] run function hns:give/give_items

scoreboard players reset * Mortes
