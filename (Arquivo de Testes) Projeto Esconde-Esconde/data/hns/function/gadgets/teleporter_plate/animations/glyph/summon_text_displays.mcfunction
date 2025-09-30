summon text_display ~ ~ ~ {view_range:2f,Rotation:[0F,-90F],Tags:["glyph1","start_animation"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:{"text":"✧","color":"#FF0000"},background:16711680}
summon text_display ~ ~ ~ {view_range:2f,Rotation:[0F,-90F],Tags:["glyph2","start_animation"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:{"text":"✷","color":"#A10000"},background:16711680}
summon text_display ~ ~ ~ {view_range:2f,Rotation:[45F,-90F],Tags:["glyph3","start_animation"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,0.9f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:{"text":"❇","color":"#B53535"},background:16711680}
summon text_display ~ ~ ~ {view_range:2f,Rotation:[45F,-90F],Tags:["glyph4","start_animation"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,0.9f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:{"text":"⛶","color":"dark_red"},background:16711680}
summon text_display ~ ~ ~ {view_range:2f,Rotation:[0F,-90F],Tags:["glyph5","start_animation"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},text:{"text":"🌕","color":"#E60404"},background:16711680}

schedule function hns:gadgets/teleporter_plate/animations/glyph/update_text_displays 1t
scoreboard objectives add teleporter_plate_animation dummy
scoreboard players set .rotation teleporter_plate_animation 0
scoreboard players set .rotation2 teleporter_plate_animation 45
function hns:gadgets/teleporter_plate/animations/glyph/rotation_loop
