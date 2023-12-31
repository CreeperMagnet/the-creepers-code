############################################################
# Gives you a compendium
############################################################

execute if entity @s[gamemode=spectator] run return 0

clear @s minecraft:written_book{tcc:{id:"compendium"}}
clear @s minecraft:written_book{tcc:{id:"unlockable_compendium"}}

loot give @s[tag=!tcc.compendium_ban,tag=tcc.unlockable_compendium] loot tcc:items/compendium_unlockable
loot give @s[tag=!tcc.compendium_ban,tag=!tcc.unlockable_compendium] loot tcc:items/compendium
