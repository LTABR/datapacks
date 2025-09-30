execute as @a[team=Escondedores,scores={shared_lives=1..,damageTaken=1..}] run tag @s add hit
execute as @a[team=Escondedores,tag=!hit] if score @s shared_lives = @p[tag=hit] shared_lives run tag @s add take_hit
execute store result storage share_damage damage int 0.1 run scoreboard players get @p[team=Escondedores,tag=hit,scores={damageTaken=1..}] damageTaken

execute if entity @a[team=Escondedores,tag=hit] run function hns:functions/shared_lives/apply_damage with storage share_damage
