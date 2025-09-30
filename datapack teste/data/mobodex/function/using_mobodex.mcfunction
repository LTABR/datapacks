advancement revoke @s only mobodex:using_mobodex

execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",looking_at:{type:"minecraft:creeper"}}}} run dialog show @s mobodex:creeper
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",looking_at:{type:"minecraft:zombie"}}}} run dialog show @s mobodex:zombie
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",looking_at:{type:"minecraft:skeleton"}}}} run dialog show @s mobodex:skeleton