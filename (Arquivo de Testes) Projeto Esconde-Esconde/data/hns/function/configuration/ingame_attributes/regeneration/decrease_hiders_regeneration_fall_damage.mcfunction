execute store result score .hiders_regeneration_fall_damage Opcoes run data get storage options hiders.regeneration_fall_damage

execute if score .hiders_regeneration_fall_damage Opcoes matches 0..9 run scoreboard players remove .hiders_regeneration_fall_damage Opcoes 1
execute if score .hiders_regeneration_fall_damage Opcoes matches -1 run scoreboard players set .hiders_regeneration_fall_damage Opcoes 11

execute store result storage options hiders.regeneration_fall_damage int 1.0 run scoreboard players get .hiders_regeneration_fall_damage Opcoes

function hns:configuration/ingame_attributes/regeneration/show_regeneration_options
