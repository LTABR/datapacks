scoreboard players operation .max_jump1 Opcoes -= .start Opcoes
scoreboard players operation .max_jump2 Opcoes -= .start Opcoes
scoreboard players operation .max_jump3 Opcoes -= .start Opcoes

execute as @a[tag=Admin] run function hns:configuration/feather_jump/show_feather_jump_options

scoreboard players reset .max_jump1 Opcoes
scoreboard players reset .max_jump2 Opcoes
scoreboard players reset .max_jump3 Opcoes
scoreboard players reset .jump1 Opcoes
scoreboard players reset .jump2 Opcoes
scoreboard players reset .jump3 Opcoes
scoreboard players reset .start Opcoes
scoreboard players reset .gravity Opcoes
