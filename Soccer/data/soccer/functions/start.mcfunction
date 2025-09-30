scoreboard objectives add spread dummy

kill @e[type=minecraft:item_display,tag=player]
kill @e[type=minecraft:text_display,tag=playername]

execute as @a[team=!admin] at @p[team=admin] run summon minecraft:item_display ^ ^2 ^1 {Tags:["player"],item:{id:"minecraft:player_head",Count:1}}
execute as @a[team=!admin] at @p[team=admin] run summon minecraft:text_display ^ ^1 ^1 {Tags:["playername"],text:'{"text":""}',billboard:"center"}

function soccer:functions/set_player_ids
function soccer:functions/set_skullowners
function soccer:functions/adjust_offsets
