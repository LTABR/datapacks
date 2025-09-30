scoreboard players set .MinutosEspera Opcoes 1
scoreboard players set .SegundosEspera Opcoes 45
scoreboard players set .Minutos Opcoes 10
scoreboard players set .VisaoNoturna Opcoes 1
scoreboard players set .revelarPontos Opcoes 2
scoreboard players set .recargafogos Opcoes 10
scoreboard players set .recargahusk Opcoes 20
scoreboard players set .revelarPosicaoM Opcoes 0
scoreboard players set .revelarPosicaoS Opcoes 30
scoreboard players set .diamantesP Opcoes 50
scoreboard players set .diamantesE Opcoes 40
scoreboard players set .diamantesPD Opcoes 60
scoreboard players set .diamantesED Opcoes 50
scoreboard players set .sempvp Opcoes 0
scoreboard players set .vitoriaEscondedores Opcoes 5
scoreboard players set .vitoriaProcuradores Opcoes 10
scoreboard players set .pontosAbate Opcoes 10
scoreboard players set .hiderToSpectator Opcoes 0
scoreboard players set .hiderToSeeker Opcoes 0
scoreboard players set .seekers Opcoes 1
scoreboard players set .timePerKill Opcoes 0
scoreboard players set .head_drops Opcoes 1
scoreboard players set .portable_shops Opcoes 0
scoreboard players set .start_invisible Opcoes 0
scoreboard players set .caixasP Opcoes 7
scoreboard players set .caixasE Opcoes 5
scoreboard players set .fall_damage Opcoes 0
scoreboard players set .drowningdamage Opcoes 0
scoreboard players set .elytra Opcoes 1
scoreboard players set .initial_pearl Opcoes 1
scoreboard players set .initial_crossbows Opcoes 2
scoreboard players set .shared_lives Opcoes 0
scoreboard players set .manual_seekers Opcoes 0
scoreboard players set .seeker_nametag Opcoes 1
scoreboard players set .hider_nametag Opcoes 0
scoreboard players set .seekers_glow Opcoes 2
scoreboard players set .last_standing Opcoes 0
scoreboard players set .pontosPorProcurador Opcoes 3
scoreboard players set .blockLevitation Opcoes 1
scoreboard players set .mineable_blocks Opcoes 0
scoreboard players set .rabbit_jump Opcoes 1
scoreboard players set .crawling Opcoes 1
scoreboard players set .seekers_sound Opcoes 1
scoreboard players set .absorption Opcoes 255
schedule clear hns:loop/pvp/disable_pvp_loop
gamerule fallDamage false
gamerule drowningDamage false
gamerule pvp true

data merge storage options {hiders:{team:"hiders",rabbit_jump_cooldown1:200,rabbit_jump_cooldown2:140,speed_penalty:0,half_scale:0.5,crouch_height:0.7,health:14,damage:2,speed:0.1,speed_string:100,jump_strength:0.42,scale:1.0,range:4.5,step_height:0.6,regeneration_fall_damage:3,regeneration:1},seekers:{team:"seekers",rabbit_jump_cooldown1:100,rabbit_jump_cooldown2:60,speed_penalty:0,half_scale:0.5,crouch_height:0.7,health:40,damage:7,speed:0.1,speed_string:100,jump_strength:0.42,scale:1.0,range:4.5,step_height:0.6,regeneration_fall_damage:1,regeneration:1},ingame:{gravity:0.08,absorption:255,fall_damage_multiplier:1.0,safe_fall_distance:3.0,rabbit_jump_strength1:2.6,rabbit_jump_strength2:1.8,rabbit_jump_strength3:0.42}}
data merge storage minecraft:options {hiders:{impulse_strength:30,impulse_cooldown:9,impulse_duration:9},seekers:{impulse_strength:40,impulse_cooldown:7,impulse_duration:18}}

# update admins
tag @a[team=!moderador] remove Admin
tag @s[team=moderador] add Admin
