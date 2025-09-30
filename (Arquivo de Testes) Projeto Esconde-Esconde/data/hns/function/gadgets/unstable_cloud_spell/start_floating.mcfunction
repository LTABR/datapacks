execute as @a[tag=levitation_applied,tag=!gliding_applied,nbt={active_effects:[{id:"minecraft:levitation",duration:1}]}] run attribute @s gravity base set 0.00306123
execute as @a[tag=levitation_applied,tag=!gliding_applied,nbt={active_effects:[{id:"minecraft:levitation",duration:1}]}] run tag @s add gliding_applied
execute as @a[tag=levitation_applied,tag=gliding_applied,nbt={active_effects:[{id:"minecraft:levitation",duration:1}]}] run tag @s remove levitation_applied
