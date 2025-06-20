# All commands to run involving warped fungi on sticks

# Boomerangs
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/boomerang] unless entity @s[scores={tcc.boomerang_cooldown=1..}] anchored eyes positioned ^ ^ ^ if block ^ ^ ^1 #tcc:boomerang/ignore if block ^ ^ ^2 #tcc:boomerang/ignore run function tcc:item/boomerang/throw/main

# Locket of Learning
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/locket_of_learning] run function tcc:item/locket_of_learning/use_item

# Smoldering Seekers
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/smoldering_seeker] if dimension minecraft:the_nether run function tcc:item/smoldering_seeker/use_item

# Reactive Seekers
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/reactive_seeker] if dimension minecraft:the_nether run function tcc:item/reactive_seeker/use_item

# Weeping Eyes
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/weeping_eye] if dimension minecraft:the_end run function tcc:item/weeping_eye/use_item

# Diluted Potions
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/diluted_potion] run function tcc:item/diluted_potion/used_item

# Dinglebop
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/tangling_pearl] run function tcc:item/tangling_pearl/use_item

# Saplinks
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/saplink] run function tcc:item/saplink/use_item

# Things that aren't allowed in adventure mode
execute if entity @s[gamemode=adventure] run return 0

# Wrenches
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/wrench] run function tcc:item/wrench/raycast_start

# Paintbrushes
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/paintbrush] run function tcc:item/paintbrush/dye/check

# Frostblooms
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/frostbloom] anchored eyes run function tcc:block/frostbloom/raycast_start

# Nether brick flower pots
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/custom_flower_pot] anchored eyes run function tcc:block/flower_pot/raycast_start

# Sprouter Egg
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/sprouter_egg] anchored eyes run function tcc:block/sprouter_egg/raycast_start

# Gobblerift
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/gobblerift] anchored eyes run function tcc:block/gobblerift/place/raycast_start

# Gobblerift Seeds
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/gobblerift_seeds] anchored eyes run function tcc:block/gobblerift/place_seeds/raycast_start

# Echoing Hourglass
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/echoing_hourglass] anchored eyes run function tcc:block/echoing_hourglass/place/raycast_start

# Snail Bucket
execute if entity @s[predicate=tcc:entity_properties/slots/weapon/snail_bucket] run function tcc:entity/snail/unbucket/raycast_start
