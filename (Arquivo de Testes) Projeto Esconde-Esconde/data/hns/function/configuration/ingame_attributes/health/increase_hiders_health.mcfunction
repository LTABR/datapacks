execute store result score .hiders_health Opcoes run data get storage options hiders.health
execute store result score .seekers_health Opcoes run data get storage options seekers.health

scoreboard players add .hiders_health Opcoes 2

execute store result storage options hiders.health int 1.0 run scoreboard players get .hiders_health Opcoes

function hns:configuration/ingame_attributes/health/show_health_options
