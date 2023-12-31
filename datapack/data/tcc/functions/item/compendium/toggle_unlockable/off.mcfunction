############################################################
# Makes all of the player's compendiums fully unlocked
############################################################

# Show a message
tellraw @s ["",{"translate":"tccc.compendium_unlocked.message_icon","font": "tcc.compendium:static"},{"translate":"tccc.compendium_unlocked.text"}]
# Show a toast
advancement grant @s only tcc:compendium/unlock_compendium
# Disable unlockable mode
tag @s remove tcc.unlockable_compendium
# Convert all unlockable compendiums into unlocked ones
function tcc:item/compendium/find_item/from/reset_item {id:"unlockable_compendium"}
