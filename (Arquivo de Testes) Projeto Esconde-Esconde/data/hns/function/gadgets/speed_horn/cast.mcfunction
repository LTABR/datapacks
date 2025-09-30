execute if entity @s[team=Procuradores] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block", block_state:"grass_block"},Radius:0f,RadiusPerTick:0.5f,RadiusOnUse:-1f,Duration:40,potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:0b,duration:1800,show_particles:1b,show_icon:1b}]}}

execute if entity @s[team=Escondedores] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block", block_state:"grass_block"},Radius:0f,RadiusPerTick:0.5f,RadiusOnUse:-1f,Duration:40,potion_contents:{custom_effects:[{id:"minecraft:speed",amplifier:1b,duration:1200,show_particles:1b,show_icon:1b}]}}
scoreboard players reset @s speed_horn

clear @s goat_horn 1
