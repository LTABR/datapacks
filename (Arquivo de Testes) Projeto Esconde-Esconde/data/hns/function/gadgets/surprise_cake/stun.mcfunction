execute as @a[tag=used_surprise_cake,team=Procuradores,predicate=hns:ending_invisibility] run attribute @s minecraft:jump_strength base set 0

execute as @a[tag=used_surprise_cake,team=Procuradores,predicate=hns:ending_invisibility] run attribute @s minecraft:jump_strength base set 0
effect give @a[tag=used_surprise_cake,team=Procuradores,predicate=hns:ending_invisibility] minecraft:slowness 1 10 true

schedule function hns:gadgets/surprise_cake/return 10t append
