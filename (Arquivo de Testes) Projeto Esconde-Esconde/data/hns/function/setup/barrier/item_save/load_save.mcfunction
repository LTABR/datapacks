data modify storage minecraft:border_saves current_border.dimension set from entity @s SelectedItem.components.minecraft:custom_data.dimension
data modify storage minecraft:border_saves current_border.x set from entity @s SelectedItem.components.minecraft:custom_data.x
data modify storage minecraft:border_saves current_border.z set from entity @s SelectedItem.components.minecraft:custom_data.z
data modify storage minecraft:border_saves current_border.size set from entity @s SelectedItem.components.minecraft:custom_data.size

execute as @s at @s run function hns:setup/barrier/item_save/set_center with storage minecraft:border_saves current_border

data modify storage minecraft:border_saves current_border.hiders_spawn_x set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_x
data modify storage minecraft:border_saves current_border.hiders_spawn_y set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_y
data modify storage minecraft:border_saves current_border.hiders_spawn_z set from entity @s SelectedItem.components.minecraft:custom_data.hiders_spawn_z

data modify storage minecraft:border_saves current_border.seekers_spawn_x set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_x
data modify storage minecraft:border_saves current_border.seekers_spawn_y set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_y
data modify storage minecraft:border_saves current_border.seekers_spawn_z set from entity @s SelectedItem.components.minecraft:custom_data.seekers_spawn_z

function hns:setup/barrier/item_save/set_seekers_spawn with storage minecraft:border_saves current_border
function hns:setup/barrier/item_save/set_hiders_spawn with storage minecraft:border_saves current_border

execute store result score .size border_saves run data get storage minecraft:border_saves current_border.size

function hns:functions/clear_entities
