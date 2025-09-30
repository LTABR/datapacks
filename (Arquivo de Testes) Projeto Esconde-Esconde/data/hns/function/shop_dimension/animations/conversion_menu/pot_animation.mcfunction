execute in hns:shop as @p[tag=at_shop] at @s run data merge entity @e[type=minecraft:item_display,limit=1,tag=bank,tag=!ready,sort=nearest] {Tags:["interface","bank","ready"],start_interpolation:1,interpolation_duration:10,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-0.5f,0f],scale:[1f,1f,1f]}}

schedule function hns:shop_dimension/animations/conversion_menu/place_pot 11t append
