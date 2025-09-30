scoreboard players reset @s Abates
effect give @s minecraft:glowing 10 255 true

execute if items entity @s armor.feet minecraft:golden_boots run item replace entity @s armor.feet with air
execute as @a[advancements={hns:hider_teamkill=true}] if items entity @s armor.feet minecraft:golden_boots run item replace entity @s armor.feet with air

schedule function hns:functions/reset_teamkilled_attributes 5t

advancement revoke @a[advancements={hns:hider_teamkill=true}] only hns:hider_teamkill
