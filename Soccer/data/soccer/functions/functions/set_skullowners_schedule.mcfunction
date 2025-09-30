tag @s add selected
execute as @e[type=item_display,tag=selected] run data modify entity @s item.tag.SkullOwner.Name set from entity @p[tag=select] Inventory[{Slot:103b}].tag.SkullOwner.Name
tag @s remove selected
