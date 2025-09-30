$data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]

data modify storage third_eye output set from entity @s transformation.scale[0]

execute store result storage third_eye location.distance int 1.0 run data get storage third_eye output

execute as @a[team=Procuradores,advancements={using_third_eye=true},predicate=hns:has_diamond] at @s run function hns:gadgets/third_eye/return_item with storage third_eye location

kill @s
