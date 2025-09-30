execute if entity @a[scores={remove_jump=1..}] run schedule function hns:gadgets/bear_trap/remove_jump 1t
execute as @a[scores={remove_jump=1..}] if score @s remove_jump matches ..39 run scoreboard players add @s remove_jump 1
$execute as @a[scores={remove_jump=1..}] if score @s remove_jump matches 40 run attribute @s jump_strength base set $(jump_strength)
execute as @a[scores={remove_jump=1..}] if score @s remove_jump matches 20 run scoreboard players reset @s remove_jump
