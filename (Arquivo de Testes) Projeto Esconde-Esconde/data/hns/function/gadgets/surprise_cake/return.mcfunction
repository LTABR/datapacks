item replace entity @a[predicate=hns:ending_luck,tag=has_leggings] armor.legs with netherite_leggings[minecraft:custom_data={no_glowing:1b},minecraft:lore= [{"color":"gray","extra":[{"bold":true,"color":"white","italic":false,"text":"Não","underlined":true},{"color":"gray","italic":false,"text":" Brilhará ao Correr."}],"italic":false,"text":"Quando Equipado, Você "}], minecraft:unbreakable= {}, tooltip_display={hidden_components:["unbreakable"]}, minecraft:trim= {material: "minecraft:gold", pattern: "minecraft:silence"}] 1
tag @a[predicate=hns:ending_luck,tag=has_leggings] remove has_leggings

tag @a[predicate=hns:ending_luck,tag=used_surprise_cake] remove used_surprise_cake

stopsound @a * minecraft:item.armor.equip_netherite
