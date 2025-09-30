execute as @a[tag=!Admin] at @s if dimension hns:shop if entity @s[x=8.5,dx=1] run tp 8.2 ~ ~
execute as @a[tag=!Admin] at @s if dimension hns:shop unless entity @e[type=text_display,tag=shop_center,distance=..29] run function hns:shop_dimension/leave_shop

execute as @a at @s if dimension hns:shop run schedule function hns:shop_dimension/loop 1t append
