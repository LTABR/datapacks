execute if score .destructible_mode Opcoes matches 0 as @a[team=Procuradores] if score @s diamantes <= .diamantesP Opcoes run give @s minecraft:diamond[minecraft:max_stack_size=99]
execute if score .destructible_mode Opcoes matches 0 as @a[team=Escondedores] if score @s diamantes <= .diamantesE Opcoes run give @s minecraft:diamond[minecraft:max_stack_size=99]
execute if score .destructible_mode Opcoes matches 0 as @a[team=Procuradores] if score @s diamantes <= .diamantesP Opcoes run scoreboard players add @s diamantes 1
execute if score .destructible_mode Opcoes matches 0 as @a[team=Escondedores] if score @s diamantes <= .diamantesE Opcoes run scoreboard players add @s diamantes 1
execute if score .destructible_mode Opcoes matches 0 as @a[team=Procuradores] if score @s diamantes <= .diamantesP Opcoes run schedule function hns:give/diamonds 1t
execute if score .destructible_mode Opcoes matches 0 as @a[team=Escondedores] if score @s diamantes <= .diamantesE Opcoes run schedule function hns:give/diamonds 1t

execute if score .destructible_mode Opcoes matches 1 as @a[team=Procuradores] if score @s diamantes <= .diamantesPD Opcoes run give @s minecraft:diamond[minecraft:max_stack_size=99]
execute if score .destructible_mode Opcoes matches 1 as @a[team=Escondedores] if score @s diamantes <= .diamantesED Opcoes run give @s minecraft:diamond[minecraft:max_stack_size=99]
execute if score .destructible_mode Opcoes matches 1 as @a[team=Procuradores] if score @s diamantes <= .diamantesPD Opcoes run scoreboard players add @s diamantes 1
execute if score .destructible_mode Opcoes matches 1 as @a[team=Escondedores] if score @s diamantes <= .diamantesED Opcoes run scoreboard players add @s diamantes 1
execute if score .destructible_mode Opcoes matches 1 as @a[team=Procuradores] if score @s diamantes <= .diamantesPD Opcoes run schedule function hns:give/diamonds 1t
execute if score .destructible_mode Opcoes matches 1 as @a[team=Escondedores] if score @s diamantes <= .diamantesED Opcoes run schedule function hns:give/diamonds 1t
