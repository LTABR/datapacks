execute store result score .hiders_health Opcoes run data get storage options hiders.health
execute store result score .seekers_health Opcoes run data get storage options seekers.health

scoreboard players add .seekers_health Opcoes 2

execute store result storage options seekers.health int 1.0 run scoreboard players get .seekers_health Opcoes

function hns:configuration/ingame_attributes/health/show_health_options
