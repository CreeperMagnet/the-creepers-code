############################################################
# Description: All commands to run involving carrots on sticks
# Creator: CreeperMagnet_
############################################################

# Wrenches
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"wrench"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"wrench"}},Slot:-106b}]}] run function tcc:item/wrench/item

# Paintbrushes
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"paintbrush"}},Slot:-106b}]}] run function tcc:item/paintbrush/item

# Teapots
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"teapot"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"teapot"}},Slot:-106b}]}] run function tcc:block/teapot/item

# Frostblooms
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"frostbloom"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"frostbloom"}},Slot:-106b}]}] run function tcc:block/frostbloom/item

# Gobblerift
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"gobblerift"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"gobblerift"}},Slot:-106b}]}] run function tcc:block/gobblerift/place/raycast_start

# Soaked Rings
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"ring",potion:{}}}}]}] run function #tcc:dynamic_rings/material_checks/use_soaked_ring_offhand
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"ring",potion:{}}}}}] run function #tcc:dynamic_rings/material_checks/use_soaked_ring_mainhand

# Obsidian Mirror
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"obsidian_mirror"}}}},nbt=!{Inventory:[{Slot:-106b,tag:{tcc:{id:"obsidian_mirror"}}}]}] unless entity @s[nbt=!{ActiveEffects:[{Id:2b}]},nbt=!{ActiveEffects:[{Id:4b}]},nbt=!{ActiveEffects:[{Id:9b}]},nbt=!{ActiveEffects:[{Id:15b}]},nbt=!{ActiveEffects:[{Id:17b}]},nbt=!{ActiveEffects:[{Id:18b}]},nbt=!{ActiveEffects:[{Id:19b}]},nbt=!{ActiveEffects:[{Id:20b}]},nbt=!{ActiveEffects:[{Id:24b}]},nbt=!{ActiveEffects:[{Id:25b}]},nbt=!{ActiveEffects:[{Id:27b}]}] run function tcc:item/obsidian_mirror

# Peculiar Berries
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"peculiar_berries"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"peculiar_berries"}},Slot:-106b}]}] run function tcc:item/peculiar_berries/item

# Quest Books
execute if entity @s[tag=!tcc.quest.healer,tag=!tcc.quest.mage,tag=!tcc.quest.warrior,tag=!tcc.quest.rogue] unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"quest_book"}},Slot:-106b}]}] run function tcc:item/quest_book/item

# Boomerangs
execute if entity @s[x_rotation=-50..50,nbt=!{SelectedItem:{tag:{tcc:{durability:[1,300]}}}},nbt={SelectedItem:{tag:{tcc:{id:"boomerang"}}}}] anchored eyes if block ^ ^ ^1 #tcc:boomerang_ignore if block ^ ^ ^2 #tcc:boomerang_ignore if block ^ ^ ^3 #tcc:boomerang_ignore if block ^ ^ ^4 #tcc:boomerang_ignore if block ^ ^ ^5 #tcc:boomerang_ignore run function tcc:item/boomerang/throw

# Spectral Boomerangs
execute if entity @s[x_rotation=-50..50,nbt=!{SelectedItem:{tag:{tcc:{durability:[1,300]}}}},nbt={SelectedItem:{tag:{tcc:{id:"spectral_boomerang"}}}}] anchored eyes run function tcc:item/boomerang/throw

# Locket of Learning
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"locket_of_learning"}},Slot:-106b}]}] run function tcc:item/locket_of_learning/init

# Smoldering Seekers
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"unset_smoldering_seeker"}}}},nbt={Dimension:"minecraft:the_nether"}] run function tcc:item/smoldering_seeker

# Reset
scoreboard players reset @s tcc.carrotstick
