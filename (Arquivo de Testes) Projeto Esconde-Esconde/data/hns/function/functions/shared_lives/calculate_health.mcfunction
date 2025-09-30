$attribute @s[team=Escondedores] max_health base set $(multiplied_health)
data remove storage options multiplied_health
scoreboard players reset .current_team_health shared_lives

effect give @s[team=Escondedores] minecraft:instant_health 1 200 true
item replace entity @s[team=Escondedores] armor.feet with golden_boots[minecraft:unbreakable={show_in_tooltip:false},minecraft:enchantments={"minecraft:binding_curse":1s,"minecraft:vanishing_curse":1},minecraft:tooltip_display={hidden_components:["minecraft:enchantments"]},minecraft:trim={material:"minecraft:amethyst",pattern:"minecraft:silence"}] 1
