scoreboard players set .will_reset_barrier Opcoes 1

$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) unless loaded ~ ~ ~ run forceload add $(seekers_spawn_x) $(seekers_spawn_z)

$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) if loaded ~ ~ ~ run kill @e[type=minecraft:text_display,tag=spawnprocuradores]

$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) unless loaded ~ ~ ~ run return run schedule function hns:functions/call_reset_barrier 1t

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) unless loaded ~ ~ ~ run forceload add $(hiders_spawn_x) $(hiders_spawn_z)

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) if loaded ~ ~ ~ run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:bell
$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) if loaded ~ ~ ~ run kill @e[type=minecraft:text_display,tag=spawnescondedores]

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) unless loaded ~ ~ ~ run return run schedule function hns:functions/call_reset_barrier 1t

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) if loaded ~ ~ ~ run forceload remove ~ ~
$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) if loaded ~ ~ ~ run forceload remove ~ ~

data remove storage minecraft:border_saves current_border
scoreboard players reset .will_reset_barrier Opcoes
