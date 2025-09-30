$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) unless loaded ~ ~ ~ run forceload add $(seekers_spawn_x) $(seekers_spawn_z)

$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) if loaded ~ ~ ~ run function hns:setup/spawns/seekers with storage minecraft:border_saves current_border
$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) if loaded ~ ~ ~ run return run forceload remove ~ ~

$execute in $(dimension) positioned $(seekers_spawn_x) $(seekers_spawn_y) $(seekers_spawn_z) unless loaded ~ ~ ~ run schedule function hns:setup/barrier/item_save/call_set_seekers_spawn 1t
