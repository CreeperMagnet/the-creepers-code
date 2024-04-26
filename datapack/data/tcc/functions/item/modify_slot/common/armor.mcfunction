# Does some checks before replacing the item

# Equipping armor should not cause this to run
execute store result score #temp_0 tcc.dummy run data get storage tcc:temp root.item.Slot
execute if score #temp_0 tcc.dummy matches 100..103 run return 0

function tcc:item/modify_slot/type/replace with storage tcc:temp root.item