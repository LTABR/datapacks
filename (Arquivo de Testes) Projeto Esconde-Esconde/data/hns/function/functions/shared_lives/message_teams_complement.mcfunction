tag @s add selected_member
tag @s add team_sorted
tag @s add current_team
execute as @a[scores={shared_lives=1..},team=Escondedores] if score @s shared_lives = @p[tag=selected_member] shared_lives run tag @s[scores={shared_lives=1..},team=Escondedores] add team_sorted
execute as @a[scores={shared_lives=1..},team=Escondedores] if score @s shared_lives = @p[tag=selected_member] shared_lives run tag @s[scores={shared_lives=1..},team=Escondedores] add current_team
tag @s remove selected_member
