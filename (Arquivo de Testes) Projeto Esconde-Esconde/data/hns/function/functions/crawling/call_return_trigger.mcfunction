$execute as @s[team=Procuradores] on vehicle as @s at @s unless entity @a[team=Procuradores,distance=..$(scale)] run function hns:functions/crawling/remove_shulker
$execute as @s[team=Escondedores] on vehicle as @s at @s unless entity @a[team=Escondedores,distance=..$(scale)] run function hns:functions/crawling/remove_shulker
