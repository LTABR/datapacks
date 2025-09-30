execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] positioned ~20 ~ ~ if block ~ ~ ~ decorated_pot run setblock ~20 ~ ~ air destroy

execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] as @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..30] at @s run tp @s ~ 1 ~
execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] as @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..30] run data merge entity @s {NoGravity:1,Motion:[-0.5,0.0,0.0]}
