$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) unless loaded ~ ~ ~ run forceload add $(hiders_spawn_x) $(hiders_spawn_z)

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) if loaded ~ ~ ~ run function hns:setup/spawns/hiders with storage minecraft:border_saves current_border
$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) if loaded ~ ~ ~ run return run forceload remove ~ ~

$execute in $(dimension) positioned $(hiders_spawn_x) $(hiders_spawn_y) $(hiders_spawn_z) unless loaded ~ ~ ~ run schedule function hns:setup/barrier/item_save/call_set_hiders_spawn 1t
