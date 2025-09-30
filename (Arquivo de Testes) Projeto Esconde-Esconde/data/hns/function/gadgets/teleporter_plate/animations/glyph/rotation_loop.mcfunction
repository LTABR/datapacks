schedule function hns:gadgets/teleporter_plate/animations/glyph/rotation_loop 1t

execute as @e[type=minecraft:text_display,tag=glyph1] store result entity @s Rotation[0] float 6.0 run scoreboard players get .rotation teleporter_plate_animation
execute as @e[type=minecraft:text_display,tag=glyph2] store result entity @s Rotation[0] float 6.0 run scoreboard players get .rotation teleporter_plate_animation
execute as @e[type=minecraft:text_display,tag=glyph5] store result entity @s Rotation[0] float 6.0 run scoreboard players get .rotation teleporter_plate_animation
scoreboard players add .rotation teleporter_plate_animation 1
execute if score .rotation teleporter_plate_animation matches 60.. run schedule clear hns:gadgets/teleporter_plate/animations/glyph/rotation_loop
execute if score .rotation teleporter_plate_animation matches 60.. run function hns:gadgets/teleporter_plate/animations/glyph/kill_text_displays

execute as @e[type=minecraft:text_display,tag=glyph4] store result entity @s Rotation[0] float 6.0 run scoreboard players get .rotation2 teleporter_plate_animation
execute as @e[type=minecraft:text_display,tag=glyph3] store result entity @s Rotation[0] float 3.0 run scoreboard players get .rotation2 teleporter_plate_animation
scoreboard players remove .rotation2 teleporter_plate_animation 1

