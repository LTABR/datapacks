execute if score .hiding Opcoes matches 1 if entity @a[scores={shared_lives=1..,Mortes=1..},advancements={hns:hider_teamkill=true}] run advancement revoke @a[scores={shared_lives=1..,Mortes=1..},advancements={hns:hider_teamkill=true}] only hns:hider_teamkill
execute if score .hiding Opcoes matches 1 if entity @a[scores={shared_lives=1..,Mortes=1..}] run scoreboard players reset * Mortes

# execute if score .hiding Opcoes matches 0 if entity @a[scores={shared_lives=1..},advancements={hns:hider_teamkill=false}] as @a[scores={shared_lives=1..,Mortes=1..}] if score @s shared_lives = @p[scores={shared_lives=1..},advancements={hns:hider_teamkill=false}] shared_lives run kill @s
execute if score .hiding Opcoes matches 0 if entity @a[team=Escondedores,scores={shared_lives=1..,Mortes=1..}] as @a[team=Escondedores,scores={shared_lives=1..}] unless score @s Mortes matches 1.. at @s if score @s shared_lives = @p[team=Escondedores,scores={shared_lives=1..,Mortes=1..}] shared_lives run kill @s

scoreboard players reset @a[team=Escondedores,scores={Mortes=1..}] Mortes
