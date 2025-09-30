execute in hns:shop as @s[advancements={hns:use_hiding_shop=true}] at @s run kill @e[type=villager,sort=nearest,limit=1,tag=loja_procurador,predicate=hns:in_shop]
execute in hns:shop run tp @s 420 69 420
$execute as @a[tag=using_shop] run attribute @s gravity base set $(gravity)

tag @s remove using_shop

scoreboard players reset @a[team=Procuradores,scores={MorteVillager=1..}] MorteVillager
scoreboard players reset @a[team=Procuradores,scores={seeker_shop=1..}] seeker_shop

advancement revoke @s[advancements={hns:use_hiding_shop=true}] only hns:use_hiding_shop
execute unless items entity @a[team=Procuradores] container.* minecraft:emerald[minecraft:custom_data={hiding_shop:1b}] run give @s emerald[minecraft:custom_data={hiding_shop:1b},minecraft:consumable={},minecraft:item_name={"text":"Usar Loja","color":"gold","bold":true,"italic":false,"underlined":true},minecraft:lore=[[{"text":"Use ","color":"gray","italic":false},{"keybind":"key.use","color":"white","italic":false,"underlined":true},{"text":" Para Ir Até a Loja."}]]] 1
