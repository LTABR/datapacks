item replace entity @a[predicate=hns:ending_invisibility,tag=has_boots] armor.feet with golden_boots[minecraft:unbreakable={},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]},minecraft:enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},minecraft:trim={material:"minecraft:amethyst",pattern:"minecraft:silence"}] 1
item replace entity @a[predicate=hns:ending_invisibility,tag=has_leggings] armor.legs with netherite_leggings[minecraft:attribute_modifiers=[{display: {type: "default"}, amount:5,type:"armor_toughness",operation:"add_multiplied_base",slot:"legs",id:"1"},{display: {type: "default"}, amount:10,type:"armor",operation:"add_multiplied_base",slot:"legs",id:"1"},{display: {type: "default"}, amount:0.5d,type:"knockback_resistance",operation:"add_multiplied_base",slot:"legs",id:"1"}],minecraft:damage=0,minecraft:trim={material:"minecraft:diamond",pattern:"minecraft:silence"},minecraft:unbreakable={}] 1
tag @a[predicate=hns:ending_invisibility,tag=has_boots] remove has_boots
tag @a[predicate=hns:ending_invisibility,tag=has_leggings] remove has_leggings

stopsound @a * minecraft:item.armor.equip_netherite
stopsound @a * minecraft:item.armor.equip_gold
