schedule function soccer:functions/rename_displays_schedule 1t

execute as @a if score @s id = .index_name id if entity @s[team=admin] run scoreboard players add .index_name id 1
execute as @a[team=!admin,tag=!playername] if score @s id = .index_name id run tag @s add playername
execute as @e[type=minecraft:text_display,tag=playername] if score @s id = @p[tag=playername] id run data merge entity @s {text:'{"selector":"@a[tag=playername]"}',Tags:["playername","select"]}
scoreboard players add .index_name id 1

execute if score .index_name id >= .playerCount id run tag @a remove playername
execute if score .index_name id >= .playerCount id run schedule clear soccer:functions/rename_displays_schedule
execute if score .index_name id >= .playerCount id run function soccer:functions/teleport_names
execute if score .index_name id >= .playerCount id run scoreboard players reset .index_name
