summon text_display ~0.5 ~0.5 ~0.5 {billboard:"center",start_interpolation:1,interpolation_duration:20,Tags:["indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:[{"text":"+","color":"dark_red","bold":true},{"text":"❤","color":"red","bold":false}],background:0}
summon text_display ~-0.5 ~0.5 ~-0.5 {billboard:"center",start_interpolation:1,interpolation_duration:20,Tags:["indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:[{"text":"+","color":"dark_red","bold":true},{"text":"❤","color":"red","bold":false}],background:0}
summon text_display ~-0.5 ~0.5 ~0.5 {billboard:"center",start_interpolation:1,interpolation_duration:20,Tags:["indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:[{"text":"+","color":"dark_red","bold":true},{"text":"❤","color":"red","bold":false}],background:0}
summon text_display ~0.5 ~0.5 ~-0.5 {billboard:"center",start_interpolation:1,interpolation_duration:20,Tags:["indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:[{"text":"+","color":"dark_red","bold":true},{"text":"❤","color":"red","bold":false}],background:0}

schedule function hns:gadgets/regeneration_spell/update_animations 2t append
schedule function hns:gadgets/regeneration_spell/end_animation 3t append

execute if entity @s[team=Escondedores] store result score .double_regeneration_hiders Opcoes run data get storage options hiders.regeneration
execute if entity @s[team=Procuradores] store result score .double_regeneration_seekers Opcoes run data get storage options seekers.regeneration

execute if entity @s[team=Escondedores] if score .double_regeneration_hiders Opcoes matches 0..10 run scoreboard players add .double_regeneration_hiders Opcoes 3
execute if entity @s[team=Procuradores] if score .double_regeneration_seekers Opcoes matches 0..10 run scoreboard players add .double_regeneration_seekers Opcoes 3

execute if entity @s[team=Escondedores] store result storage regeneration level int 1.0 run scoreboard players get .double_regeneration_hiders Opcoes
execute if entity @s[team=Procuradores] store result storage regeneration level int 1.0 run scoreboard players get .double_regeneration_seekers Opcoes

tag @s add regenerate
execute as @s at @s run function hns:gadgets/regeneration_spell/apply_effect with storage regeneration
tag @s remove regenerate
data remove storage regeneration level

scoreboard players reset .double_regeneration_hiders Opcoes
scoreboard players reset .double_regeneration_seekers Opcoes

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.5 1
stopsound @s player minecraft:block.enchantment_table.use
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1

advancement revoke @s[advancements={hns:use_regeneration_spell=true}] only hns:use_regeneration_spell

execute if items entity @s weapon.mainhand minecraft:popped_chorus_fruit[minecraft:custom_data={regeneration_spell:1b}] run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand minecraft:popped_chorus_fruit[minecraft:custom_data={regeneration_spell:1b}] run item replace entity @s weapon.offhand with air
