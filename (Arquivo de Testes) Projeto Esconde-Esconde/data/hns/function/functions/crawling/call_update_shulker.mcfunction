execute if entity @s[team=Procuradores] positioned ~ ~1 ~ unless entity @s[dy=0] run function hns:functions/crawling/update_shulker with storage options seekers
execute if entity @s[team=Escondedores] positioned ~ ~1 ~ unless entity @s[dy=0] run function hns:functions/crawling/update_shulker with storage options hiders
