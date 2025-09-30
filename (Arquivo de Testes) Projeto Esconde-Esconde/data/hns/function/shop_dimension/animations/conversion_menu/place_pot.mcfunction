execute unless entity @e[type=item_display,tag=ready,tag=bank] run return 0
execute as @e[type=item_display,tag=ready,tag=bank] at @s run setblock ~-1 ~-1 ~ decorated_pot
execute in hns:shop as @p[tag=at_shop] at @s run execute at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] as @e[type=item_display,tag=ready,tag=bank,limit=1,sort=nearest] at @s if block ~-1 ~-1 ~ decorated_pot run kill @s
