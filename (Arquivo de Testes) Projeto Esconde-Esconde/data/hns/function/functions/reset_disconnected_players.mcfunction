advancement revoke @s only hns:offmatch_loop
execute if score .hiding Opcoes matches 0..1 run return fail

execute if data storage minecraft:border_saves current_border.dimension if data storage minecraft:border_saves current_border.x if data storage minecraft:border_saves current_border.z run function hns:functions/teleport_disconnected with storage border_saves current_border

scoreboard players reset @s saiu
scoreboard players reset @s play_time
tellraw @a [{"selector":"@s"},{"text":" Retornou de Uma Partida Desconectada"}]
team leave @s
clear @s

item replace entity @s hotbar.0 with minecraft:cooked_beef[max_stack_size=99] 99
execute if entity @s[tag=Admin] run function hns:give/admin_book
item replace entity @s hotbar.8 with firework_rocket[minecraft:can_place_on={blocks:"#hns:all_blocks"},minecraft:tooltip_display={hidden_components:["minecraft:can_place_on"]}, max_stack_size= 99, minecraft:fireworks= {flight_duration: 3b}] 99

function hns:functions/clear_tags
function hns:functions/reset_attributes
