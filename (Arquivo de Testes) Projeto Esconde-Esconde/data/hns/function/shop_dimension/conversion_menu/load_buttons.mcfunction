execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~24 ~5 ~5 ~24 ~6 ~7 minecraft:command_block[facing=east]{Command:"function hns:shop_dimension/conversion_menu/increase_emeralds"}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~23 ~5 ~5 ~23 ~6 ~7 barrier

execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~24 ~2 ~5 ~24 ~3 ~7 minecraft:command_block[facing=east]{Command:"function hns:shop_dimension/conversion_menu/decrease_emeralds"}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~23 ~2 ~5 ~23 ~3 ~7 barrier

# back to main menu button
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~24 ~ ~6 ~24 ~ ~10 minecraft:command_block[facing=east]{Command:"schedule function hns:shop_dimension/main_menu/main_menu 1t"}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~25 ~ ~6 ~25 ~ ~10 minecraft:chain_command_block[facing=east]{Command:"function hns:shop_dimension/main_menu/clear_interface",auto:true}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~23 ~ ~6 ~23 ~ ~10 barrier


execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~24 ~1 ~3 ~24 ~2 ~-3 minecraft:command_block[facing=east]{Command:"function hns:shop_dimension/conversion_menu/confirm_button"}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run fill ~23 ~1 ~3 ~23 ~2 ~-3 barrier
