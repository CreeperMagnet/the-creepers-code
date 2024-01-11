# Updates an unlocked compendium

advancement revoke @s[tag=tcc.modifying_item] only tcc:technical/inventory_changed/compendium/unlocked
# If this was called due to a modified item in this code, return
execute if entity @s[tag=tcc.modifying_item] run return 0

function tcc:item/compendium/find_item/from/reset_item {id:"compendium"}
execute if entity @s[tag=tcc.unlockable_compendium] run function tcc:item/compendium/update_unlocks/main

# Revoke the advancement that called this function
advancement revoke @s only tcc:technical/inventory_changed/compendium/unlocked
