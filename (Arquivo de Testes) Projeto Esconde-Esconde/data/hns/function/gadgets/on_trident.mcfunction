execute if data entity @s {DealtDamage:1b} run kill @s
data merge entity @s {damage:28.0d}

execute at @s on origin run ride @s[tag=!on_trident,predicate=!hns:riding_trident] mount @e[type=trident,limit=1,sort=nearest,tag=!ridden]
execute if entity @s[predicate=!hns:on_ride] run kill @s

tag @s add ridden
