scoreboard players add @p[tag=at_shop] esmeraldas_placeholder 1
scoreboard players add @p[tag=at_shop] pontosTotais_placeholder 2
execute if score @p[tag=at_shop] pontosTotais < @p[tag=at_shop] pontosTotais_placeholder run scoreboard players remove @p[tag=at_shop] esmeraldas_placeholder 1
execute if score @p[tag=at_shop] pontosTotais < @p[tag=at_shop] pontosTotais_placeholder run scoreboard players remove @p[tag=at_shop] pontosTotais_placeholder 2

execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run kill @e[type=text_display,tag=points_conversion,limit=1,sort=nearest]
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run kill @e[type=text_display,tag=emeralds_conversion,limit=1,sort=nearest]
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run summon text_display ~20 ~6.75 ~-0 {view_range:0.5f,width:1f,height:1f,billboard:"fixed",line_width:2000,background:0,alignment:"right",Rotation:[90F,0F],Tags:["interface","points_conversion"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.49f],scale:[8f,8f,8f]},text:[{"text":"               \n"},{"score":{"name": "@p[tag=at_shop]","objective": "pontosTotais_placeholder"},"color": "yellow","bold": false},{"text":" Ponto(s)"}]}
execute in hns:shop as @p[tag=at_shop] at @s at @e[type=minecraft:text_display,tag=shop_center,sort=nearest,limit=1] run summon text_display ~20 ~2.75 ~-3 {view_range:0.5f,width:1f,height:1f,billboard:"fixed",line_width:2000,background:0,alignment:"right",Rotation:[90F,0F],Tags:["interface","emeralds_conversion"],brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.49f],scale:[8f,8f,8f]},text:[{"text":"            \n"},{"text":"+","color": "dark_green","bold": true},{"score":{"name": "@p[tag=at_shop]","objective": "esmeraldas_placeholder"},"color": "dark_green","bold": true}]}

scoreboard players reset * interacted
