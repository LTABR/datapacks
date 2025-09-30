execute store result score .generate structure_weights run random value 1..100

# caso queira gerar estruturas de nível Y baixo, fazer um buraco que vai até o nível baixo, em um mundo diferente que suporta todas as estruturas listadas aqui
# fazer uma interface que modifica as probabilidades e listar a porcentagem e a quantidade de chunks que vai rodar a probabilidade em cada estrutura

# low Y level structures
# $execute if score .structure_id structure_weights matches XX if score .generate structure_weights matches 1..$(mineshaft) run place structure mineshaft
# $execute if score .structure_id structure_weights matches XX if score .generate structure_weights matches 1..$(fortress) run place structure fortress
# $execute if score .structure_id structure_weights matches XX if score .generate structure_weights matches 1..$(ancient_city) run place structure ancient_city
# $execute if score .structure_id structure_weights matches XX if score .generate structure_weights matches 1..$(bastion_remnant) run place structure bastion_remnant
# $execute if score .structure_id structure_weights matches XX if score .generate structure_weights matches 1..$(stronghold) run place structure stronghold

# any Y level structure
$execute if score .structure_id structure_weights matches 1 if score .generate structure_weights matches 1..$(mansion) run place structure mansion
$execute if score .structure_id structure_weights matches 2 if score .generate structure_weights matches 1..$(pillager_outpost) run place structure pillager_outpost
$execute if score .structure_id structure_weights matches 3 if score .generate structure_weights matches 1..$(village_desert) run place structure village_desert
$execute if score .structure_id structure_weights matches 4 if score .generate structure_weights matches 1..$(village_plains) run place structure village_plains
$execute if score .structure_id structure_weights matches 5 if score .generate structure_weights matches 1..$(village_savanna) run place structure village_savanna
$execute if score .structure_id structure_weights matches 6 if score .generate structure_weights matches 1..$(village_snowy) run place structure village_snowy
$execute if score .structure_id structure_weights matches 7 if score .generate structure_weights matches 1..$(village_taiga) run place structure village_taiga
$execute if score .structure_id structure_weights matches 8 if score .generate structure_weights matches 1..$(mineshaft_mesa) run place structure mineshaft_mesa
$execute if score .structure_id structure_weights matches 9 if score .generate structure_weights matches 1..$(shipwreck) run place structure shipwreck
$execute if score .structure_id structure_weights matches 10 if score .generate structure_weights matches 1..$(shipwreck_beached) run place structure shipwreck_beached
$execute if score .structure_id structure_weights matches 11 if score .generate structure_weights matches 1..$(jungle_pyramid) run place structure jungle_pyramid
$execute if score .structure_id structure_weights matches 12 if score .generate structure_weights matches 1..$(desert_pyramid) run place structure desert_pyramid
$execute if score .structure_id structure_weights matches 13 if score .generate structure_weights matches 1..$(swamp_hut) run place structure swamp_hut

# high Y level structures
$execute if score .structure_id structure_weights matches 14 if score .generate structure_weights matches 1..$(end_city) run place structure end_city

execute as @a[tag=!Admin] at @s in hns:caveworld positioned over motion_blocking run tp @s ~ ~ ~

execute if score .entities Diametro matches 0 run kill @e[type=!minecraft:player,predicate=hns:in_caveworld]
