summon minecraft:arrow ~ ~ ~ {Tags:["get_block"],Motion:[0.0,-10.0,0.0],damage:-1,SoundEvent: "minecraft:intentionally_empty"}
tp @s ~-0.5 ~ ~-0.5

tag @s add waiting

schedule function hns:gadgets/fake_block/loop_check_ground 1t
