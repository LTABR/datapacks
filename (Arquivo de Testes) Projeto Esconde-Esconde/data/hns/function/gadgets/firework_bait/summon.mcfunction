execute unless data entity @p[scores={vara=1..},team=Escondedores] SelectedItem{id:"minecraft:fishing_rod"} run kill @s
execute unless data entity @p[scores={quebravara=1..},distance=..29] SelectedItem run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime: 60, Fireworks: {Flight: 3b}}
execute if data entity @p[scores={vara=1..},distance=..29,team=Escondedores] SelectedItem{id:"minecraft:fishing_rod"} run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime: 60, Fireworks: {Flight: 3b}}
scoreboard players reset @p[scores={vara=1..},team=Escondedores] vara
scoreboard players reset @p[scores={quebravara=1..}] quebravara

kill @s
