scoreboard players add @e[type=text_display,tag=animation_applied] Cronometro 1
kill @e[type=text_display,tag=animation_applied,scores={Cronometro=30..}]

execute if entity @e[type=minecraft:text_display,tag=animation_applied] run schedule function hns:gadgets/regeneration_spell/end_animation 1t
