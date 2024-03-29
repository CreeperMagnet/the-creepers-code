# All commands to run involving warped fungi on sticks

# Boomerangs
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{durability:[1,300]}}}},nbt={SelectedItem:{tag:{tcc:{id:"boomerang"}}}}] unless entity @s[scores={tcc.boomerang_cooldown=1..}] anchored eyes positioned ^ ^ ^ run function tcc:item/boomerang/throw

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

# Things that aren't allowed in adventure mode
execute if entity @s[gamemode=adventure] run return 0

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
