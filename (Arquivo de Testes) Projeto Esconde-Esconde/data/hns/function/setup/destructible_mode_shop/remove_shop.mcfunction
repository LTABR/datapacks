schedule clear hns:setup/destructible_mode_shop/call_loop1
fill ~ ~-20 ~ ~ ~20 ~ air replace minecraft:lime_shulker_box[facing=north]{lock:{components:{"minecraft:custom_data":{lock:1}}}}
fill ~ ~-20 ~ ~ ~20 ~ air replace minecraft:red_shulker_box[facing=south]{lock:{components:{"minecraft:custom_data":{lock:1}}}}
clear @a minecraft:netherite_ingot[minecraft:custom_data={lock:1}]
forceload remove ~ ~
schedule function hns:setup/destructible_mode_shop/apply 1t
