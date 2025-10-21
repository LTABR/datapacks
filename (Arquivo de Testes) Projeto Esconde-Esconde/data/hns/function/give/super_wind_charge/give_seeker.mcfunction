$item replace entity @s[team=Procuradores] hotbar.2 with crossbow[item_model="minecraft:wind_charge",custom_data={super_charge:1},equippable={slot:"mainhand"},charged_projectiles=[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],item_name=["Super ",{"translate":"item.minecraft.wind_charge"}],rarity="epic",tooltip_display={hidden_components:["enchantments","charged_projectiles"]},minecraft:use_effects={can_sprint:$(reload_sprint),speed_multiplier:$(reload_movement_placeholder)},minecraft:enchantments={"hns:super_wind_charge/reload_time":$(impulse_reload_placeholder),"minecraft:infinity":1},minecraft:use_cooldown={seconds:$(impulse_cooldown),cooldown_group:"minecraft:wind_charge"},max_damage=$(impulse_duration)]

execute if data storage minecraft:options {seekers:{super_wind_charge:1b}} run item modify entity @s[team=Procuradores] hotbar.2 hns:super_wind_charge/insert_impulse_seeker
execute if data storage minecraft:options {seekers:{glider:1b}} run item modify entity @s[team=Procuradores] hotbar.2 hns:super_wind_charge/insert_glider_seeker
execute if data storage minecraft:options {seekers:{crawler:1b}} run item modify entity @s[team=Procuradores] hotbar.2 hns:super_wind_charge/insert_crawler

data remove storage options seekers.impulse_reload_placeholder
data remove storage options seekers.reload_movement_placeholder
