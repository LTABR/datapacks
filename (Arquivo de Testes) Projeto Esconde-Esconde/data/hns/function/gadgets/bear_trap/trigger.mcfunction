effect give @s slowness 2 255 true
attribute @s minecraft:jump_strength base set 0
scoreboard players set @s remove_jump 1
function hns:gadgets/bear_trap/remove_jump with storage options seekers

execute at @e[type=interaction,limit=1,tag=bear_trap,sort=nearest] run fill ~ ~ ~ ~ ~ ~ air replace small_amethyst_bud
kill @e[type=interaction,limit=1,tag=bear_trap,sort=nearest]

summon evoker_fangs ~ ~ ~
summon evoker_fangs ~ ~ ~ {Warmup:2}
summon evoker_fangs ~ ~ ~ {Warmup:4}

ride @s mount @e[type=evoker_fangs,limit=1,sort=nearest,nbt={Warmup:4}]
