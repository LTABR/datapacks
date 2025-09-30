execute as @a[team=Procuradores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tag @e[type=villager,tag=loja_procurador,distance=..5] add kill
execute as @a[team=Procuradores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tp @e[type=villager,tag=loja_procurador,tag=kill] ~ ~-100 ~
execute as @a[team=Procuradores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run kill @e[type=villager,tag=loja_procurador,tag=kill]
execute as @a[team=Procuradores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tag @s remove shop

execute if entity @a[team=Procuradores,tag=shop] run schedule function hns:functions/portable_shop/clear_portable_shop_seekers 1t
