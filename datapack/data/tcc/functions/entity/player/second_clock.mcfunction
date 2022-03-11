############################################################
# Functions to run off players every second
############################################################

# Reset for mending repair
execute if entity @s[predicate=!tcc:entity/holding/mending_item/any] run tag @s remove tcc.saw_xp_orb

## Ender dragon head healing
execute if entity @s[predicate=tcc:entity/wearing/dragon_head] if entity @e[type=end_crystal,distance=..40,nbt=!{ShowBottom:1b},tag=!smithed.strict] at @s run function tcc:entity/end_crystal/heal

## Making sure hats don't break in certain circumstances...
function tcc:item/hat_entity_equip

# Frost walker speed on ice
execute if entity @s[predicate=tcc:entity/frost_walker_speed,tag=!tcc.frost_walker_speed] run function tcc:entity/player/frost_walker_speed/set
execute if entity @s[tag=tcc.frost_walker_speed] unless entity @s[predicate=tcc:entity/frost_walker_speed] run function tcc:entity/player/frost_walker_speed/reset

# Tea tickdown
execute if entity @s[scores={tcc.tea=1..}] run function tcc:item/tea/tickdown
