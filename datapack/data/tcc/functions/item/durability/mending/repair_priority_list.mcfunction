############################################################
# Repairs items in the proper order as intended
############################################################

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change tcc.dummy 2
scoreboard players operation #item_durability_change tcc.dummy *= @s tcc.old_xp

# Repair items in the proper order
execute if entity @s[predicate=tcc:entity/holding/mending_item/mainhand] run function tcc:item/durability/slots/mainhand
execute if entity @s[predicate=!tcc:entity/holding/mending_item/mainhand,predicate=tcc:entity/holding/mending_item/offhand] run function tcc:item/durability/slots/offhand
execute if entity @s[predicate=!tcc:entity/holding/mending_item/mainhand,predicate=!tcc:entity/holding/mending_item/offhand,predicate=tcc:entity/holding/mending_item/head] run function tcc:item/durability/slots/head

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change tcc.dummy /= #2 tcc.dummy
function tcc:item/durability/mending/xp_subtraction_loop
