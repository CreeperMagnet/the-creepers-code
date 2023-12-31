############################################################
# Repairs all items until no more can be repaired or found
############################################################

execute if score #mending_equipment_last_index tcc.dummy matches 1.. store result storage tcc:storage root.temp.random.max int 1 run scoreboard players get #mending_equipment_last_index tcc.dummy
execute if score #mending_equipment_last_index tcc.dummy matches 1.. run function tcc:item/durability/mending/get_random/random with storage tcc:storage root.temp.random
# /random can only choose between two or more choices, so special case for singular item
execute if score #mending_equipment_last_index tcc.dummy matches 0 run function tcc:item/durability/mending/get_random/get_in_list {value:0}

scoreboard players operation #item_durability_change tcc.dummy -= #previous_durability_change tcc.dummy
scoreboard players operation #item_durability_change tcc.dummy *= #-1 tcc.dummy
scoreboard players operation #previous_durability_change tcc.dummy = #item_durability_change tcc.dummy
execute if score #item_durability_change tcc.dummy matches 0 run return 0

scoreboard players remove #mending_equipment_last_index tcc.dummy 1
execute if score #mending_equipment_last_index tcc.dummy matches 0.. run function tcc:item/durability/mending/repair_loop
