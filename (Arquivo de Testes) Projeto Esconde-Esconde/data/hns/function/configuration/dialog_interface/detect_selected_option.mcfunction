advancement revoke @s only hns:select_option

function hns:configuration/dialog_interface/unify_teams_settings

# super wind charge
execute if score @s Opcoes matches 1 run data merge storage placeholder_options {players:{option_command:"data merge storage minecraft:options {hiders:{super_wind_charge:$(hiders_super_wind_charge),glider:$(hiders_glider),crawler:$(hiders_crawler),impulse_reload:$(hiders_impulse_reload),reload_movement:$(hiders_reload_movement),reload_sprint:$(hiders_reload_sprint),impulse_strength:$(hiders_impulse),impulse_cooldown:$(hiders_cooldown),impulse_duration:$(hiders_duration)},seekers:{super_wind_charge:$(seekers_super_wind_charge),glider:$(seekers_glider),crawler:$(seekers_crawler),impulse_reload:$(seekers_impulse_reload),reload_movement:$(seekers_reload_movement),reload_sprint:$(seekers_reload_sprint),impulse_strength:$(seekers_impulse),impulse_cooldown:$(seekers_cooldown),impulse_duration:$(seekers_duration)}}"}}
execute if score @s Opcoes matches 1 store success score @s Opcoes run function hns:configuration/dialog_interface/impulse_options with storage placeholder_options players

execute if score @s Opcoes matches 2 run say selecionado 2
execute if score @s Opcoes matches 3 run say selecionado 3

execute if score @s Opcoes matches 0 run tellraw @s {text:"Houve algum erro ao abrir menu de opções. Tente redefinir as opções ao padrão.",color:"red"}

scoreboard players reset @s Opcoes
scoreboard players enable @s Opcoes

data remove storage placeholder_options players
