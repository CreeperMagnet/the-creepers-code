############################################################
# All commands to run involving warped fungi on sticks
############################################################

# Wrenches
execute if entity @s[predicate=tcc:entity/holding/wrench] anchored eyes run function tcc:item/wrench/raycast

# Paintbrushes
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"paintbrush"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"paintbrush"}},Slot:-106b}]}] run function tcc:item/paintbrush/dye/check

# Teapots
execute if entity @s[predicate=tcc:entity/holding/teapot] anchored eyes run function tcc:block/teapot/raycast

# Frostblooms
execute if entity @s[predicate=tcc:entity/holding/frostbloom] anchored eyes run function tcc:block/frostbloom/raycast

# Gobblerift
execute if entity @s[predicate=tcc:entity/holding/gobblerift] anchored eyes run function tcc:block/gobblerift/place/raycast

# Snail Bucket
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"snail_bucket"}}}}] anchored eyes run function tcc:entity/snail/unbucket/raycast

# Molten Mirror
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"molten_mirror"}}}},nbt=!{Inventory:[{Slot:-106b,tag:{tcc:{id:"molten_mirror"}}}]}] if data entity @s ActiveEffects run function tcc:item/molten_mirror/main

# Boomerangs
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{durability:[1,300]}}}},nbt={SelectedItem:{tag:{tcc:{id:"boomerang"}}}}] unless entity @s[scores={tcc.boomerang_cooldown=1..}] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ rotated ~ 0 if block ^ ^ ^1 #tcc:boomerang/ignore if block ^ ^ ^2 #tcc:boomerang/ignore if block ^ ^ ^3 #tcc:boomerang/ignore if block ^ ^ ^4 #tcc:boomerang/ignore rotated as @s run function tcc:item/boomerang/throw

# Locket of Learning
execute unless entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}},nbt=!{Inventory:[{tag:{tcc:{id:"locket_of_learning"}},Slot:-106b}]}] run function tcc:item/locket_of_learning/init

# Smoldering Seekers
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"unset_smoldering_seeker"}}}}] if dimension minecraft:the_nether run function tcc:item/smoldering_seeker

# Weeping Eyes
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"unset_weeping_eye"}}}}] if dimension minecraft:the_end run function tcc:item/weeping_eye

# Diluted Potions
execute if entity @s[predicate=tcc:entity/holding/diluted_potion/any] run function tcc:item/diluted_potion/used_item

# Dinglebop
execute if entity @s[predicate=tcc:entity/holding/tangling_pearl] run function tcc:item/tangling_pearl/toggle/main

# Reset
scoreboard players reset @s tcc.used_warped_fungus_on_a_stick
