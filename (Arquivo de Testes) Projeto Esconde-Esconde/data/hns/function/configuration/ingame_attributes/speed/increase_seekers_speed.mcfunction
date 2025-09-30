summon marker ~ ~ ~ {Tags:["configuration"]}

execute store result entity @e[limit=1,tag=configuration,type=marker] data.seekers_speed double 1.0 run data get storage options seekers.speed 1000.0
execute store result entity @e[limit=1,tag=configuration,type=marker] data.hiders_speed double 1.0 run data get storage options hiders.speed 1000.0
execute store result score .seekers_speed Opcoes run data get entity @e[limit=1,tag=configuration,type=marker] data.seekers_speed 1.0
execute store result score .hiders_speed Opcoes run data get entity @e[limit=1,tag=configuration,type=marker] data.hiders_speed 1.0
kill @e[type=marker,tag=configuration,limit=1,sort=nearest]

execute if score .seekers_speed Opcoes matches ..990 run scoreboard players add .seekers_speed Opcoes 5

execute store result storage options seekers.speed double 0.001 run scoreboard players get .seekers_speed Opcoes

function hns:configuration/ingame_attributes/speed/show_speed_options
