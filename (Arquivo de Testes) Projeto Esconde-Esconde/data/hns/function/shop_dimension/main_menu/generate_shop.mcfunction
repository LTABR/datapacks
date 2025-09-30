execute in hns:shop as @p[tag=at_shop] at @s if entity @a[distance=..30,tag=!at_shop] run tp @s 0 0 ~64
execute in hns:shop as @p[tag=at_shop] at @s if entity @a[distance=..30,tag=!at_shop] as @s at @s run function hns:shop_dimension/main_menu/generate_shop
execute in hns:shop as @p[tag=at_shop] at @s unless entity @e[tag=shop_center,distance=..30] run summon minecraft:text_display 0 0 ~ {Tags:["shop_center"],Rotation:[-90F,0F]}
execute in hns:shop at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run forceload add ~-1 ~-17 ~16 ~16

execute in hns:shop as @p[tag=at_shop] at @s run tp @s 0 0 ~ -90 0
execute in hns:shop as @p[tag=at_shop] at @s run attribute @s minecraft:block_interaction_range base set 30
execute in hns:shop as @p[tag=at_shop] at @s run attribute @s minecraft:step_height base set 0.49
execute in hns:shop as @p[tag=at_shop] at @s run effect give @s minecraft:jump_boost infinite 250 true
execute in hns:shop as @p[tag=at_shop] at @s run function hns:shop_dimension/main_menu/clear_interface
execute in hns:shop at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run summon text_display ~7.2 ~0.5 ~ {view_range:0.02f,width:1f,height:1f,billboard:"fixed",line_width:200,default_background:0b,alignment:"center",Rotation:[90F,-45F],Tags:["tip"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"text":"Caso não esteja enxergando as letras, tente diminuir o campo visual nas opções."},background:-16777216}
execute in hns:shop at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run function hns:shop_dimension/main_menu/main_menu

execute in hns:shop at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run setblock ~-11 ~-7 ~-23 minecraft:structure_block[mode=load]{author:"LTA_BR",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"hns:shop",posX:0,posY:0,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:48,sizeY:48,sizeZ:48}
execute in hns:shop at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run setblock ~-11 ~-6 ~-23 minecraft:redstone_block

