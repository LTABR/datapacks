import os
import glob

os.chdir(os.path.dirname(os.path.realpath(__file__)))

intangible_blocks = [
        "tall_dry_grass.json",
        "short_dry_grass.json",
        "firefly_bush.json",
        "wildflowers.json",
        "leaf_litter.json",
        "cactus_flower.json",
        "resin_clump.json",
        "amethyst_cluster.json",
        "oak_hanging_sign.json",
        "spruce_hanging_sign.json",
        "birch_hanging_sign.json",
        "acacia_hanging_sign.json",
        "cherry_hanging_sign.json",
        "jungle_hanging_sign.json",
        "dark_oak_hanging_sign.json",
        "pale_oak_hanging_sign.json",
        "crimson_hanging_sign.json",
        "warped_hanging_sign.json",
        "mangrove_hanging_sign.json",
        "bamboo_hanging_sign.json",
        "oak_wall_hanging_sign.json",
        "spruce_wall_hanging_sign.json",
        "birch_wall_hanging_sign.json",
        "acacia_wall_hanging_sign.json",
        "cherry_wall_hanging_sign.json",
        "jungle_wall_hanging_sign.json",
        "dark_oak_wall_hanging_sign.json",
        "pale_oak_wall_hanging_sign.json",
        "crimson_wall_hanging_sign.json",
        "warped_wall_hanging_sign.json",
        "mangrove_wall_hanging_sign.json",
        "bamboo_wall_hanging_sig.jsonn"
        "oak_wall_sign.json",
        "spruce_wall_sign.json",
        "birch_wall_sign.json",
        "acacia_wall_sign.json",
        "jungle_wall_sign.json",
        "dark_oak_wall_sign.json",
        "crimson_wall_sign.json",
        "warped_wall_sign.json",
        "mangrove_wall_sign.json",
        "bamboo_wall_sign.json",
        "cherry_wall_sign.json",
        "oak_sign.json",
        "pale_oak_sign.json",
        "spruce_sign.json",
        "birch_sign.json",
        "acacia_sign.json",
        "jungle_sign.json",
        "dark_oak_sign.json",
        "crimson_sign.json",
        "warped_sign.json",
        "mangrove_sign.json",
        "bamboo_sign.json",
        "cherry_sign.json",
        # "oak_door.json",
        # "spruce_door.json",
        # "birch_door.json",
        # "jungle_door.json",
        # "acacia_door.json",
        # "dark_oak_door.json",
        # "pale_oak_door.json",
        # "crimson_door.json",
        # "warped_door.json",
        # "mangrove_door.json",
        # "bamboo_door.json",
        # "cherry_door.json",
        # "iron_door.json",
        # "acacia_fence_gate.json",
        # "birch_fence_gate.json",
        # "dark_oak_fence_gate.json",
        # "pale_oak_fence_gate.json",
        # "jungle_fence_gate.json",
        # "oak_fence_gate.json",
        # "spruce_fence_gate.json",
        # "crimson_fence_gate.json",
        # "warped_fence_gate.json",
        # "mangrove_fence_gate.json",
        # "bamboo_fence_gate.json",
        # "cherry_fence_gate.json",
        "oak_pressure_plate.json",
        "spruce_pressure_plate.json",
        "birch_pressure_plate.json",
        "jungle_pressure_plate.json",
        "acacia_pressure_plate.json",
        "dark_oak_pressure_plate.json",
        "pale_oak_pressure_plate.json",
        "crimson_pressure_plate.json",
        "warped_pressure_plate.json",
        "mangrove_pressure_plate.json",
        "bamboo_pressure_plate.json",
        "cherry_pressure_plate.json",
        "acacia_fence_gate.json",
        "birch_fence_gate.json",
        "dark_oak_fence_gate.json",
        "pale_oak_fence_gate.json",
        "jungle_fence_gate.json",
        "oak_fence_gate.json",
        "spruce_fence_gate.json",
        "crimson_fence_gate.json",
        "warped_fence_gate.json",
        "mangrove_fence_gate.json",
        "bamboo_fence_gate.json",
        "cherry_fence_gate.json",
        # "fire.json",
        # "soul_fire.json",
        "pale_hanging_moss.json",
        "seagrass.json",
        "white_banner.json",
        "orange_banner.json",
        "magenta_banner.json",
        "light_blue_banner.json",
        "yellow_banner.json",
        "lime_banner.json",
        "pink_banner.json",
        "gray_banner.json",
        "light_gray_banner.json",
        "cyan_banner.json",
        "purple_banner.json",
        "blue_banner.json",
        "brown_banner.json",
        "green_banner.json",
        "red_banner.json",
        "black_banner.json",
        "white_wall_banner.json",
        "orange_wall_banner.json",
        "magenta_wall_banner.json",
        "light_blue_wall_banner.json",
        "yellow_wall_banner.json",
        "lime_wall_banner.json",
        "pink_wall_banner.json",
        "gray_wall_banner.json",
        "light_gray_wall_banner.json",
        "cyan_wall_banner.json",
        "purple_wall_banner.json",
        "blue_wall_banner.json",
        "brown_wall_banner.json",
        "green_wall_banner.json",
        "red_wall_banner.json",
        "black_wall_banner.json",
        "stone_button.json",
        "polished_blackstone_button.json",
        "oak_button.json",
        "spruce_button.json",
        "birch_button.json",
        "jungle_button.json",
        "acacia_button.json",
        "dark_oak_button.json",
        "crimson_button.json",
        "warped_button.json",
        "mangrove_button.json",
        "bamboo_button.json",
        "cherry_button.json",
        "pale_oak_button.json",
        "candle.json",
        "white_candle.json",
        "orange_candle.json",
        "magenta_candle.json",
        "light_blue_candle.json",
        "yellow_candle.json",
        "lime_candle.json",
        "pink_candle.json",
        "gray_candle.json",
        "light_gray_candle.json",
        "cyan_candle.json",
        "purple_candle.json",
        "blue_candle.json",
        "brown_candle.json",
        "green_candle.json",
        "red_candle.json",
        "black_candle.json",
        "candle_cake.json",
        "white_candle_cake.json",
        "orange_candle_cake.json",
        "magenta_candle_cake.json",
        "light_blue_candle_cake.json",
        "yellow_candle_cake.json",
        "lime_candle_cake.json",
        "pink_candle_cake.json",
        "gray_candle_cake.json",
        "light_gray_candle_cake.json",
        "cyan_candle_cake.json",
        "purple_candle_cake.json",
        "blue_candle_cake.json",
        "brown_candle_cake.json",
        "green_candle_cake.json",
        "red_candle_cake.json",
        "black_candle_cake.json",
        "cave_vines_plant.json",
        "cave_vines.json",
        "beetroots.json",
        "carrots.json",
        "potatoes.json",
        "wheat.json",
        "melon_stem.json",
        "pumpkin_stem.json",
        "torchflower.json",
        "torchflower_crop.json",
        "pitcher_crop.json",
        # "ladder.json",
        "vine.json",
        "scaffolding.json",
        "weeping_vines.json",
        "weeping_vines_plant.json",
        "twisting_vines.json",
        "twisting_vines_plant.json",
        "oak_sapling.json",
        "spruce_sapling.json",
        "birch_sapling.json",
        "jungle_sapling.json",
        "acacia_sapling.json",
        "dark_oak_sapling.json",
        "pale_oak_sapling.json",
        "cherry_sapling.json",
        "open_eyeblossom.json",
        "closed_eyeblossom.json",
        "azalea.json",
        "flowering_azalea.json",
        "mangrove_propagule.json",
        "tube_coral.json",
        "brain_coral.json",
        "bubble_coral.json",
        "fire_coral.json",
        "horn_coral.json",
        "tube_coral_fan.json",
        "brain_coral_fan.json",
        "bubble_coral_fan.json",
        "fire_coral_fan.json",
        "horn_coral_fan.json",
        "tube_coral_wall_fan.json",
        "brain_coral_wall_fan.json",
        "bubble_coral_wall_fan.json",
        "fire_coral_wall_fan.json",
        "horn_coral_wall_fan.json",
        "oak_wall_hanging_sign.json",
        "spruce_wall_hanging_sign.json",
        "birch_wall_hanging_sign.json",
        "acacia_wall_hanging_sign.json",
        "cherry_wall_hanging_sign.json",
        "jungle_wall_hanging_sign.json",
        "dark_oak_wall_hanging_sign.json",
        "crimson_wall_hanging_sign.json",
        "warped_wall_hanging_sign.json",
        "mangrove_wall_hanging_sign.json",
        "bamboo_wall_hanging_sign.json",
        "white_carpet.json",
        "orange_carpet.json",
        "magenta_carpet.json",
        "light_blue_carpet.json",
        "yellow_carpet.json",
        "lime_carpet.json",
        "pink_carpet.json",
        "gray_carpet.json",
        "light_gray_carpet.json",
        "cyan_carpet.json",
        "purple_carpet.json",
        "blue_carpet.json",
        "brown_carpet.json",
        "green_carpet.json",
        "red_carpet.json",
        "black_carpet.json",
        "sunflower.json",
        "lilac.json",
        "peony.json",
        "rose_bush.json",
        "pitcher_plant.json",
        "dandelion.json",
        "poppy.json",
        "blue_orchid.json",
        "allium.json",
        "azure_bluet.json",
        "red_tulip.json",
        "orange_tulip.json",
        "white_tulip.json",
        "pink_tulip.json",
        "oxeye_daisy.json",
        "cornflower.json",
        "lily_of_the_valley.json",
        "wither_rose.json",
        "flowering_azalea_leaves.json",
        "flowering_azalea.json",
        "mangrove_propagule.json",
        "cherry_leaves.json",
        "pink_petals.json",
        "chorus_flower.json",
        "spore_blossom.json",
        "dead_tube_coral.json",
        "dead_brain_coral.json",
        "dead_bubble_coral.json",
        "dead_fire_coral.json",
        "dead_horn_coral.json",
        "dead_tube_coral_fan.json",
        "dead_brain_coral_fan.json",
        "dead_bubble_coral_fan.json",
        "dead_fire_coral_fan.json",
        "dead_horn_coral_fan.json",
        "dead_tube_coral_wall_fan.json",
        "dead_brain_coral_wall_fan.json",
        "dead_bubble_coral_wall_fan.json",
        "dead_fire_coral_wall_fan.json",
        "dead_horn_coral_wall_fan.json",
        "dead_bush.json",
        "bush.json",
        "fern.json",
        "large_fern.json",
        "sugar_cane.json",
        "tall_grass.json",
        "short_grass.json",
        "warped_roots.json",
        "crimson_roots.json",
        "nether_sprouts.json",
        "glow_lichen.json",
        "small_dripleaf.json",
        "frogspawn.json",
        "sweet_berry_bush.json",
        "scaffolding.json",
        "cobweb.json",
        "big_dripleaf.json",
        "big_dripleaf_stem.json",
        "hanging_roots.json",
        "nether_wart.json",
        "tripwire.json",
        "tripwire_hook.json",
        "kelp.json",
        "kelp_plant.json",
        "seagrass.json",
        "tall_seagrass.json",
        "lever.json",
        "torch.json",
        "soul_torch.json",
        "redstone_torch.json",
        "wall_torch.json",
        "soul_wall_torch.json",
        "redstone_wall_torch.json",
        "sculk_vein.json",
        "sculk_shrieker.json",
        "activator_rail.json",
        "detector_rail.json",
        "powered_rail.json",
        "rail.json",
        "water.json",
        "crimson_fungus.json",
        "warped_fungus.json",
        "red_mushroom.json",
        "brown_mushroom.json",
        "soul_sand.json",
        "honey_block.json",
        "powder_snow.json"
        ]

for file in glob.glob("*.json"):
    # CHECK INTANGIBLE BLOCKS
    intangible = True
    for search in intangible_blocks:
        if (search == file):
            intangible = False
    if intangible is False:
        f = open(file, 'r+')
        f.truncate(0)
        f.write("""{
  "type": "minecraft:block",
  "pools": [
    {
      "rolls": 0,
      "bonus_rolls": 0,
      "entries": []
    }
  ]
}""")
        f.close()
        print(file, """(DISABLED DROP)""")

    # ALL BLOCKS
    if intangible is True:
        f = open(file, 'r+')
        f.truncate(0)
        f.write("""{
      "type": "minecraft:block",
      "pools": [
        {
          "rolls": 1,
          "bonus_rolls": 0,
          "entries": [
            {
              "type": "minecraft:alternatives",
              "children": [
                {
                  "type": "minecraft:item",
                  "name": "minecraft:brown_mushroom_block",
                  "functions": [
                    {
                      "function": "minecraft:set_components",
                      "components": {
                        "minecraft:max_stack_size":99,
                        "minecraft:block_state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"},
                        "tooltip_display": {"hidden_components":["minecraft:can_place_on"]},
                        "minecraft:can_place_on":[{"blocks":"#hns:all_blocks"}],
                        "minecraft:can_break":[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"suspicious_gravel","nbt":"{item:{id:'minecraft:ravager_spawn_egg',count:1}}"}]
                      }
                    }
                  ],
                  "conditions": [
                    {
                      "condition": "minecraft:inverted",
                      "term": {
                        "condition": "minecraft:match_tool",
                        "predicate": {
                          "items": "#minecraft:pickaxes",
                          "predicates": {
                              "minecraft:enchantments": [
                              {
                                "enchantments": "minecraft:fortune",
                                "levels": 10
                              }
                            ]
                          }
                        }
                      }
                    },
                    {
                      "condition": "minecraft:match_tool",
                      "predicate": {
                        "items": "#minecraft:pickaxes"
                      }
                    }
                  ]
                },
                {
                  "type": "minecraft:item",
                  "name": "minecraft:brown_mushroom_block",
                  "functions": [
                    {
                      "function": "minecraft:set_components",
                      "components": {
                        "minecraft:max_stack_size":99,
                        "minecraft:block_state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"},
                        "tooltip_display": {"hidden_components":["minecraft:can_place_on"]},
                        "minecraft:can_place_on":[{"blocks":"#hns:all_blocks"}],
                        "minecraft:can_break":[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"suspicious_gravel","nbt":"{item:{id:'minecraft:ravager_spawn_egg',count:1}}"},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}}]
                      }
                    }
                  ],
                  "conditions": [
                    {
                      "condition": "minecraft:inverted",
                      "term": {
                        "condition": "minecraft:survives_explosion"
                      }
                    }
                  ]
                },
                {
                  "type": "minecraft:item",
                  "name": "minecraft:brown_mushroom_block",
                  "functions": [
                    {
                      "function": "minecraft:set_count",
                      "count": 19,
                      "add": false
                    },
                    {
                      "function": "minecraft:set_components",
                      "components": {
                        "minecraft:max_stack_size":99,
                        "minecraft:block_state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"},
                        "tooltip_display": {"hidden_components":["minecraft:can_place_on"]},
                        "minecraft:can_place_on":[{"blocks":"#hns:all_blocks"}],
                        "minecraft:can_break":[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"suspicious_gravel","nbt":"{item:{id:'minecraft:ravager_spawn_egg',count:1}}"},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}}]
                      }
                    }
                  ],
                  "conditions": [
                    {
                      "condition": "minecraft:match_tool",
                      "predicate": {
                        "items": "#minecraft:pickaxes",
                        "predicates": {
                          "minecraft:damage": {
                            "durability": 1
                          },
                          "minecraft:enchantments": [
                            {
                              "enchantments": "minecraft:fortune",
                              "levels": 10
                            }
                          ]
                        }
                      }
                    }
                  ]
                },
                {
                  "type": "minecraft:item",
                  "name": "minecraft:brown_mushroom_block",
                  "functions": [
                    {
                      "function": "minecraft:set_count",
                      "count": 5,
                      "add": false
                    },
                    {
                      "function": "minecraft:set_components",
                      "components": {
                        "minecraft:max_stack_size":99,
                        "minecraft:block_state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"},
                        "tooltip_display": {"hidden_components":["minecraft:can_place_on"]},
                        "minecraft:can_place_on":[{"blocks":"#hns:all_blocks"}],
                        "minecraft:can_break":[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"suspicious_gravel","nbt":"{item:{id:'minecraft:ravager_spawn_egg',count:1}}"},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}}]
                      }
                    }
                  ],
                  "conditions": [
                    {
                      "condition": "minecraft:match_tool",
                      "predicate": {
                        "items": "#minecraft:pickaxes",
                        "predicates": {
                          "minecraft:damage": {
                            "durability": {
                              "min": 2,
                              "max": 10
                            }
                          },
                          "minecraft:enchantments": [
                            {
                              "enchantments": "minecraft:fortune",
                              "levels": 10
                            }
                          ]
                        }
                      }
                    }
                  ]
                },
                {
                  "type": "minecraft:item",
                  "name": "minecraft:brown_mushroom_block",
                  "functions": [
                    {
                      "function": "minecraft:set_components",
                      "components": {
                        "minecraft:max_stack_size":99,
                        "minecraft:block_state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"},
                        "tooltip_display": {"hidden_components":["minecraft:can_place_on"]},
                        "minecraft:can_place_on":[{"blocks":"#hns:all_blocks"}],
                        "minecraft:can_break":[{"blocks":"minecraft:red_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}},{"blocks":"suspicious_gravel","nbt":"{item:{id:'minecraft:ravager_spawn_egg',count:1}}"},{"blocks":"minecraft:brown_mushroom_block","state":{"down":"false","up":"false","east":"false","west":"false","north":"false","south":"false"}}]
                      }
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }""")
        f.close()
        print(file)

    # CHECK SEAL GADGET BLOCK
    if (file == "suspicious_gravel.json"):
        f = open(file, 'r+')
        f.truncate(0)
        f.write("""{
  "type": "minecraft:block",
  "pools": [
    {
      "rolls": 1,
      "bonus_rolls": 0,
      "entries": [
        {
          "type": "minecraft:alternatives",
          "children": [
            {
              "type": "minecraft:item",
              "name": "minecraft:ravager_spawn_egg",
              "functions": [
                {
                  "function": "minecraft:set_components",
                  "components": {
                    "tooltip_display": {
                      "hidden_components": [
                        "minecraft:can_place_on"
                      ]
                    },
                    "minecraft:can_place_on": [
                      {
                        "blocks": "#hns:all_blocks"
                      }
                    ],
                    "minecraft:can_break": [
                      {
                        "blocks": "minecraft:red_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "suspicious_gravel",
                        "nbt": "{item:{id:\\"minecraft:ravager_spawn_egg\\",count:1}}"
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      }
                    ],
                    "minecraft:item_name": {
                      "text": "Selador",
                      "color": "white",
                      "italic": false,
                      "underlined": true
                    },
                    "minecraft:lore": [
                      {
                        "text": "Um Bloco Que Pode Tampar Entradas.",
                        "color": "gray",
                        "italic": false
                      },
                      {
                        "text": "- Pode Ser Quebrado e Utilizado Por Escondedores.",
                        "color": "red",
                        "underlined": true
                      },
                      {
                        "text": "- Possui Gravidade e se Quebra.",
                        "color": "red",
                        "underlined": true
                      }
                    ],
                    "minecraft:entity_data": {
                      "id": "minecraft:block_display",
                      "Tags": [
                        "gravel_box"
                      ]
                    },
                    "minecraft:item_model": "minecraft:suspicious_gravel"
                  }
                }
              ],
              "conditions": [
                {
                  "condition": "minecraft:block_state_property",
                  "block": "minecraft:suspicious_gravel",
                  "properties": {
                    "dusted": "3"
                  }
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:brown_mushroom_block",
              "functions": [
                {
                  "function": "minecraft:set_components",
                  "components": {
                    "minecraft:max_stack_size": 99,
                    "minecraft:block_state": {
                      "down": "false",
                      "up": "false",
                      "east": "false",
                      "west": "false",
                      "north": "false",
                      "south": "false"
                    },
                    "tooltip_display": {
                      "hidden_components": [
                        "minecraft:can_place_on"
                      ]
                    },
                    "minecraft:can_place_on": [
                      {
                        "blocks": "#hns:all_blocks"
                      }
                    ],
                    "minecraft:can_break": [
                      {
                        "blocks": "minecraft:red_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "suspicious_gravel",
                        "nbt": "{item:{id:\\"minecraft:ravager_spawn_egg\\",count:1}}"
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      }
                    ]
                  }
                }
              ],
              "conditions": [
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:match_tool",
                    "predicate": {
                      "items": "#minecraft:pickaxes",
                      "predicates": {
                        "minecraft:enchantments": [
                          {
                            "enchantments": "minecraft:fortune",
                            "levels": 10
                          }
                        ]
                      }
                    }
                  }
                },
                {
                  "condition": "minecraft:match_tool",
                  "predicate": {
                    "items": "#minecraft:pickaxes"
                  }
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:brown_mushroom_block",
              "functions": [
                {
                  "function": "minecraft:set_components",
                  "components": {
                    "minecraft:max_stack_size": 99,
                    "minecraft:block_state": {
                      "down": "false",
                      "up": "false",
                      "east": "false",
                      "west": "false",
                      "north": "false",
                      "south": "false"
                    },
                    "tooltip_display": {
                      "hidden_components": [
                        "minecraft:can_place_on"
                      ]
                    },
                    "minecraft:can_place_on": [
                      {
                        "blocks": "#hns:all_blocks"
                      }
                    ],
                    "minecraft:can_break": [
                      {
                        "blocks": "minecraft:red_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "suspicious_gravel",
                        "nbt": "{item:{id:\\"minecraft:ravager_spawn_egg\\",count:1}}"
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      }
                    ]
                  }
                }
              ],
              "conditions": [
                {
                  "condition": "minecraft:inverted",
                  "term": {
                    "condition": "minecraft:survives_explosion"
                  }
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:brown_mushroom_block",
              "functions": [
                {
                  "function": "minecraft:set_count",
                  "count": 19,
                  "add": false
                },
                {
                  "function": "minecraft:set_components",
                  "components": {
                    "minecraft:max_stack_size": 99,
                    "minecraft:block_state": {
                      "down": "false",
                      "up": "false",
                      "east": "false",
                      "west": "false",
                      "north": "false",
                      "south": "false"
                    },
                    "tooltip_display": {
                      "hidden_components": [
                        "minecraft:can_place_on"
                      ]
                    },
                    "minecraft:can_place_on": [
                      {
                        "blocks": "#hns:all_blocks"
                      }
                    ],
                    "minecraft:can_break": [
                      {
                        "blocks": "minecraft:red_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "suspicious_gravel",
                        "nbt": "{item:{id:\\"minecraft:ravager_spawn_egg\\",count:1}}"
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      }
                    ]
                  }
                }
              ],
              "conditions": [
                {
                  "condition": "minecraft:match_tool",
                  "predicate": {
                    "items": "#minecraft:pickaxes",
                    "predicates": {
                      "minecraft:damage": {
                        "durability": 1
                      },
                      "minecraft:enchantments": [
                        {
                          "enchantments": "minecraft:fortune",
                          "levels": 10
                        }
                      ]
                    }
                  }
                }
              ]
            },
            {
              "type": "minecraft:item",
              "name": "minecraft:brown_mushroom_block",
              "functions": [
                {
                  "function": "minecraft:set_count",
                  "count": 5,
                  "add": false
                },
                {
                  "function": "minecraft:set_components",
                  "components": {
                    "minecraft:max_stack_size": 99,
                    "minecraft:block_state": {
                      "down": "false",
                      "up": "false",
                      "east": "false",
                      "west": "false",
                      "north": "false",
                      "south": "false"
                    },
                    "tooltip_display": {
                      "hidden_components": [
                        "minecraft:can_place_on"
                      ]
                    },
                    "minecraft:can_place_on": [
                      {
                        "blocks": "#hns:all_blocks"
                      }
                    ],
                    "minecraft:can_break": [
                      {
                        "blocks": "minecraft:red_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      },
                      {
                        "blocks": "suspicious_gravel",
                        "nbt": "{item:{id:\\"minecraft:ravager_spawn_egg\\",count:1}}"
                      },
                      {
                        "blocks": "minecraft:brown_mushroom_block",
                        "state": {
                          "down": "false",
                          "up": "false",
                          "east": "false",
                          "west": "false",
                          "north": "false",
                          "south": "false"
                        }
                      }
                    ]
                  }
                }
              ],
              "conditions": [
                {
                  "condition": "minecraft:match_tool",
                  "predicate": {
                    "items": "#minecraft:pickaxes",
                    "predicates": {
                      "minecraft:damage": {
                        "durability": {
                          "min": 2,
                          "max": 10
                        }
                      },
                      "minecraft:enchantments": [
                        {
                          "enchantments": "minecraft:fortune",
                          "levels": 10
                        }
                      ]
                    }
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
""")
        f.close()
        print(file, """(SEAL GADGET)""")

print()
input("Done.")
