scoreboard players add @s[tag=feather,scores={rabbit_jump=1..}] rabbit_jump_cooldown 1

$execute if entity @s[tag=feather,tag=!feather2,scores={rabbit_jump_cooldown=$(rabbit_jump_cooldown1)..}] run function hns:loop/feather_elytra/first_recharge with storage options ingame

$execute if entity @s[tag=feather,tag=feather2,scores={rabbit_jump=1,rabbit_jump_cooldown=$(rabbit_jump_cooldown2)..}] run function hns:loop/feather_elytra/first_recharge with storage options ingame
$execute if entity @s[tag=feather,tag=feather2,scores={rabbit_jump=2,rabbit_jump_cooldown=$(rabbit_jump_cooldown1)..}] run function hns:loop/feather_elytra/second_recharge with storage options ingame

execute if entity @a[scores={rabbit_jump=1..}] run schedule function hns:loop/feather_elytra/call_cooldown_loop 1t replace

tag @s[tag=feather,scores={rabbit_jump=0}] remove feather
tag @s[tag=feather2,scores={rabbit_jump=0}] remove feather2
