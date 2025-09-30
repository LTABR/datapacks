tag @s add dead_hider
execute if entity @a[team=Escondedores,scores={shared_lives=1..,Mortes=1..}] as @a[team=Escondedores,scores={shared_lives=1..},tag=!dead_hider] at @s if score @s shared_lives = @p[team=Escondedores,scores={shared_lives=1..,Mortes=1..}] shared_lives run kill @s
