execute as @a[team=Escondedores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tag @e[type=villager,tag=loja_escondedor,distance=..5] add kill
execute as @a[team=Escondedores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tp @e[type=villager,tag=loja_escondedor,tag=kill] ~ ~-100 ~
execute as @a[team=Escondedores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run kill @e[type=villager,tag=loja_escondedor,tag=kill]
execute as @a[team=Escondedores,tag=shop] if entity @s[predicate=!hns:using_portable_shop] at @s run tag @s remove shop

execute if entity @a[team=Escondedores,tag=shop] run schedule function hns:functions/portable_shop/clear_portable_shop_hiders 1t
