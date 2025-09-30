$effect give @s minecraft:regeneration 10 $(level)
$execute if score .shared_lives Opcoes matches 1 as @a[scores={shared_lives=1..}] if score @s shared_lives = @p[tag=regenerate] shared_lives run effect give @s minecraft:regeneration 10 $(level)
