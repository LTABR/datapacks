execute if score .hiderToSeeker Opcoes matches 0 run effect give @s minecraft:glowing 10 255 true

execute if score .shared_lives Opcoes matches 1 run schedule function hns:functions/reset_teamkilled_attributes 5t

advancement revoke @a[advancements={hns:hider_creeper_death=true}] only hns:hider_creeper_death
