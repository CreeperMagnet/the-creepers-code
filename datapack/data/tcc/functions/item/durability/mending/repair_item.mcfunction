# Repairs all items until no more can be repaired or found

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change tcc.dummy 2
scoreboard players operation #item_durability_change tcc.dummy *= @s tcc.old_xp

# Add all available equipment to the pool
data modify storage tcc:storage root.temp.equipment.list set value []

execute if entity @s[predicate=tcc:entity/holding/mending_item/mainhand] run data modify storage tcc:storage root.temp.equipment.list append value "mainhand"
execute if entity @s[predicate=tcc:entity/holding/mending_item/offhand] run data modify storage tcc:storage root.temp.equipment.list append value "offhand"
execute if entity @s[predicate=tcc:entity/holding/mending_item/head] run data modify storage tcc:storage root.temp.equipment.list append value "head"

# If enabled, add vanilla equipment to the pool
execute if entity @s[tag=tcc.repair_vanilla_items] run function tcc:item/durability/mending/find_vanilla_items
tag @s remove tcc.repair_vanilla_items

scoreboard players operation #max_durability_change tcc.dummy = #item_durability_change tcc.dummy
scoreboard players operation #previous_durability_change tcc.dummy = #item_durability_change tcc.dummy
execute store result score #mending_equipment_last_index tcc.dummy run data get storage tcc:storage root.temp.equipment.list
scoreboard players remove #mending_equipment_last_index tcc.dummy 1
execute store result score #cancel_mending tcc.dummy if score #mending_equipment_last_index tcc.dummy matches -1
execute if score #cancel_mending tcc.dummy matches 0 run function tcc:item/durability/mending/repair_loop
scoreboard players operation #item_durability_change tcc.dummy -= #max_durability_change tcc.dummy
execute if score #item_durability_change tcc.dummy matches 1.. run scoreboard players operation #item_durability_change tcc.dummy *= #-1 tcc.dummy

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change tcc.dummy /= #2 tcc.dummy
execute if score #cancel_mending tcc.dummy matches 0 run function tcc:item/durability/mending/xp_subtraction_loop
