$execute if score .fall_damage Opcoes matches 0 unless score .hiders_regeneration Opcoes matches 11 unless entity @s[predicate=hns:regeneration_particles] run effect give @s[team=Escondedores] minecraft:regeneration infinite $(regeneration) true
$execute if score .fall_damage Opcoes matches 1 unless score .hiders_regeneration_fall_damage Opcoes matches 11 unless entity @s[predicate=hns:regeneration_particles] run effect give @s[team=Escondedores] minecraft:regeneration infinite $(regeneration_fall_damage) true

# $execute if score .fall_damage Opcoes matches 0 unless score .hiders_regeneration Opcoes matches 11 run effect give @s[team=Escondedores,nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] minecraft:regeneration infinite $(regeneration) true
# $execute if score .fall_damage Opcoes matches 1 unless score .hiders_regeneration_fall_damage Opcoes matches 11 run effect give @s[team=Escondedores,nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] minecraft:regeneration infinite $(regeneration_fall_damage) true

$execute as @s[team=Escondedores] if score .shared_lives Opcoes matches 1 unless score @s shared_lives matches 1.. run attribute @s minecraft:max_health base set $(health)
$execute as @s[team=Escondedores] if score .shared_lives Opcoes matches 0 run attribute @s minecraft:max_health base set $(health)
$execute as @s[team=Escondedores] run attribute @s minecraft:attack_damage base set $(damage)
$execute as @s[team=Escondedores] run attribute @s minecraft:movement_speed base set 0.$(speed_string)
$execute as @s[team=Escondedores] run attribute @s minecraft:scale base set $(scale)
$execute as @s[team=Escondedores] run attribute @s minecraft:entity_interaction_range base set $(range)
$execute as @s[team=Escondedores] run attribute @s minecraft:block_interaction_range base set $(range)
$execute as @s[team=Escondedores] run attribute @s minecraft:step_height base set $(step_height)
$execute as @s[team=Escondedores] run attribute @s[tag=!trigger] minecraft:jump_strength base set $(jump_strength)

$execute as @e[type=shulker,tag=shulker_crawl,team=Escondedores] at @s unless entity @a[team=Escondedores,distance=..$(scale)] run function hns:functions/crawling/remove_shulker
