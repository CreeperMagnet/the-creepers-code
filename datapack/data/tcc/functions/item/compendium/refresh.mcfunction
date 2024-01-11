# Refreshes the player's compendium(s)

execute if entity @s[gamemode=spectator] run return 0

execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.unlockable_compendium] run function tcc:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
execute if entity @s[tag=!tcc.compendium_ban,tag=tcc.unlockable_compendium] run function tcc:item/compendium/update_unlocks/main
execute if entity @s[tag=!tcc.compendium_ban,tag=!tcc.unlockable_compendium] run function tcc:item/compendium/find_item/from/reset_item {id:"compendium"}
