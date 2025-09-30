tag @s add selected_calculation
execute if score .shared_lives Opcoes matches 1 as @a[scores={shared_lives=1..},team=Escondedores] if score @s shared_lives = @p[tag=selected_calculation] shared_lives run scoreboard players operation @p[tag=selected_calculation] Pontos += .vitoriaEscondedores Opcoes
tag @s remove selected_calculation
