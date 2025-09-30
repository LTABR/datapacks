# execute if entity @s[predicate=hns:on_ground] run tag @s add found
execute if data entity @s OnGround run tag @s add found
execute as @s[type=arrow,tag=found] run data modify storage minecraft:camouflage Name set from entity @s inBlockState.Name
execute if entity @s[tag=found] as @e[type=block_display,tag=fake_block,sort=nearest,limit=1] run function hns:gadgets/fake_block/update_block_display
kill @s[tag=found]

# execute unless entity @s[predicate=hns:on_ground] run schedule function hns:gadgets/fake_block/check_ground 1t append
execute unless data entity @s OnGround run schedule function hns:gadgets/fake_block/check_ground 1t append
