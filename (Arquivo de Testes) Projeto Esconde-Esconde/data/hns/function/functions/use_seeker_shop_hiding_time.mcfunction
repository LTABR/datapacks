$execute in hns:shop run tp @s $(shop_x) $(shop_y) $(shop_z)

$execute in hns:shop run summon villager $(shop_x) $(shop_y) $(shop_z) {Health:1f,Tags:["loja_procurador","shop"],VillagerData: {level: 5, profession: "minecraft:armorer", type: "minecraft:desert"}, Offers: {Recipes: []},NoGravity:1}

ride @p[tag=using_shop,team=Procuradores] mount @e[type=villager,sort=nearest,limit=1,tag=loja_procurador]
$execute in hns:shop run tp @s $(shop_x) $(shop_y) $(shop_z)

data remove storage border_saves current_border.shop_x
data remove storage border_saves current_border.shop_y
data remove storage border_saves current_border.shop_z
