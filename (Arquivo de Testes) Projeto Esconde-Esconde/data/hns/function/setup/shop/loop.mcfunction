schedule function hns:setup/shop/call_loop1 5t
$execute positioned $(1ax) $(1ay) $(1az) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(2ax) $(2ay) $(2az) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(3ax) $(3ay) $(3az) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(4ax) $(4ay) $(4az) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(5ax) $(5ay) $(5az) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop

$execute positioned $(1bx) $(1by) $(1bz) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(2bx) $(2by) $(2bz) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(3bx) $(3by) $(3bz) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(4bx) $(4by) $(4bz) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop
$execute positioned $(5bx) $(5by) $(5bz) if block ~ ~ ~ air run return run function hns:setup/shop/remove_shop

$execute positioned $(1ax) $(1ay) $(1az) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril1_procuradores Items set from block ~ ~ ~ Items
$execute positioned $(2ax) $(2ay) $(2az) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril2_procuradores Items set from block ~ ~ ~ Items
$execute positioned $(3ax) $(3ay) $(3az) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril3_procuradores Items set from block ~ ~ ~ Items
$execute positioned $(4ax) $(4ay) $(4az) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril4_procuradores Items set from block ~ ~ ~ Items
$execute positioned $(5ax) $(5ay) $(5az) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril5_procuradores Items set from block ~ ~ ~ Items

$execute positioned $(1bx) $(1by) $(1bz) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril1_escondedores Items set from block ~ ~ ~ Items
$execute positioned $(2bx) $(2by) $(2bz) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril2_escondedores Items set from block ~ ~ ~ Items
$execute positioned $(3bx) $(3by) $(3bz) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril3_escondedores Items set from block ~ ~ ~ Items
$execute positioned $(4bx) $(4by) $(4bz) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril4_escondedores Items set from block ~ ~ ~ Items
$execute positioned $(5bx) $(5by) $(5bz) if items block ~ ~ ~ container.* * run data modify storage minecraft:loja_barril5_escondedores Items set from block ~ ~ ~ Items

data modify storage minecraft:loja_procuradores Recipes set value [{buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}]
data modify storage minecraft:loja_escondedores Recipes set value [{buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}, {buy: {}, buyB: {}, sell: {}}]

$execute positioned $(1ax) $(1ay) $(1az) run function hns:setup/shop/seekers_containers/on_container1a
$execute positioned $(2ax) $(2ay) $(2az) run function hns:setup/shop/seekers_containers/on_container2a
$execute positioned $(3ax) $(3ay) $(3az) run function hns:setup/shop/seekers_containers/on_container3a
$execute positioned $(4ax) $(4ay) $(4az) run function hns:setup/shop/seekers_containers/on_container4a
$execute positioned $(5ax) $(5ay) $(5az) run function hns:setup/shop/seekers_containers/on_container5a

$execute positioned $(1bx) $(1by) $(1bz) run function hns:setup/shop/hiders_containers/on_container1b
$execute positioned $(2bx) $(2by) $(2bz) run function hns:setup/shop/hiders_containers/on_container2b
$execute positioned $(3bx) $(3by) $(3bz) run function hns:setup/shop/hiders_containers/on_container3b
$execute positioned $(4bx) $(4by) $(4bz) run function hns:setup/shop/hiders_containers/on_container4b
$execute positioned $(5bx) $(5by) $(5bz) run function hns:setup/shop/hiders_containers/on_container5b

$execute unless entity @e[type=minecraft:villager,tag=exemplo_escondedor] positioned $(5bx) $(5by) $(5bz) run summon minecraft:villager ~ ~-2 ~ {NoAI: 1, Silent: 1, Invulnerable: 1, NoGravity: 1, Tags: ["exemplo_escondedor"], VillagerData: {profession: "minecraft:weaponsmith", level: 1, type: "minecraft:plains"}}
$execute unless entity @e[type=minecraft:villager,tag=exemplo_procurador] positioned $(1ax) $(1ay) $(1az) run summon minecraft:villager ~ ~1 ~ {NoAI: 1, Silent: 1, Invulnerable: 1, NoGravity: 1, Tags: ["exemplo_procurador"], VillagerData: {profession: "minecraft:armorer", level: 1, type: "minecraft:plains"}}

execute as @e[type=minecraft:villager,tag=exemplo_escondedor,limit=1] run function hns:setup/shop/on_hider_example
execute as @e[type=minecraft:villager,tag=exemplo_procurador,limit=1] run function hns:setup/shop/on_seeker_example

# IF ADDING A NEW CONTAINER, ALSO IMPLEMENT IN "SETUP/SETUP", "CONFIGURATION/RESET_SHOP", CONFIGURATION, "CONFIGURATION/INGAME_ATTRIBUTES/SCALE/CHECK_IF_RANGED_WEAPONS", "SETUP/UNINSTALL", THIS FILE (LOOP), "SHOP/AT_PLAYER", "SHOP/CHECK_AREA", "SHOP/HIDERS_CONTAINERS/", "SHOP/SEEKERS_CONTAINERS/", "SHOP/REMOVE_EMPTY_TRADES_SEEKER", "SHOP/REMOVE_EMPTY_TRADES_HIDER", "SHOP/REMOVE_SHOP", "SHOP/ON_SEEKER_EXAMPLE"
