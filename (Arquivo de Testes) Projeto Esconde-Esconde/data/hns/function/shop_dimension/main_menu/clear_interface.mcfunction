execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] positioned ~20 ~3 ~ run kill @e[type=!player,tag=interface,distance=..20]
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] positioned ~20 ~-1 ~ run fill ~ ~15 ~15 ~5 ~ ~-15 air

scoreboard players reset * interacted
