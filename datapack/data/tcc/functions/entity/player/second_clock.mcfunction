# Functions to run off players every second

## Making sure hats don't break in certain circumstances...
function tcc:item/hat_entity_equip

# Tea tickdown
execute if entity @s[scores={tcc.tea=1..}] run function tcc:item/tea/tickdown

# Cursed crown tickdown
execute if entity @s[scores={tcc.cursed_crown_cooldown=1..}] run function tcc:item/cursed_crown/tickdown

# Soulbound items maintaining after death
execute if entity @s[tag=tcc.needs_to_respawn_with_soulbound_items,nbt=!{Health:0f}] if loaded ~ ~ ~ run function tcc:item/soulbound_item/respawn/main

# Boomerang Throwing Cooldown
scoreboard players remove @s[scores={tcc.boomerang_cooldown=1..}] tcc.boomerang_cooldown 1

# Fix for striders and custom WFOAS
execute if entity @s[tag=tcc.on_strider] run function tcc:item/warped_fungus_on_a_stick/strider_fix/second_clock
