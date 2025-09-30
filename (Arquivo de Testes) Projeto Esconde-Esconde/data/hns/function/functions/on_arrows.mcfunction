data merge entity @s {NoGravity: 1, pickup: 2b}

# execute if data entity @s[predicate=hns:on_ground] item.components.minecraft:potion_contents.custom_effects[{id:"minecraft:dolphins_grace"}] at @s run function hns:gadgets/on_tipped_arrow
execute if data entity @s[nbt={inGround:1b}] item.components.minecraft:potion_contents.custom_effects[{id:"minecraft:dolphins_grace"}] at @s run function hns:gadgets/on_tipped_arrow
