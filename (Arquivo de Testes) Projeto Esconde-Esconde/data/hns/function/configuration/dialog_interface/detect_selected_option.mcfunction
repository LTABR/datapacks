advancement revoke @s only hns:select_option

function hns:configuration/dialog_interface/unify_teams_settings

# super wind charge
execute if score @s Opcoes matches 1 run data merge storage placeholder_options {players:{option_command:"data merge storage minecraft:options {hiders:{impulse_strength:$(hiders_impulse),impulse_cooldown:$(hiders_cooldown),impulse_duration:$(hiders_duration)},seekers:{impulse_strength:$(seekers_impulse),impulse_cooldown:$(seekers_cooldown),impulse_duration:$(seekers_duration)}}"}}
execute if score @s Opcoes matches 1 run function hns:configuration/dialog_interface/impulse_options with storage placeholder_options players

execute if score @s Opcoes matches 2 run say selecionado 2
execute if score @s Opcoes matches 3 run say selecionado 3

scoreboard players reset @s Opcoes
scoreboard players enable @s Opcoes

data remove storage placeholder_options players
