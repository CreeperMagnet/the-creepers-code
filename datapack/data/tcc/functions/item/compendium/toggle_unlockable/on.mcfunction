############################################################
# Makes all of the player's compendiums unlockable
############################################################

# Show a message
tellraw @s ["",{"translate":"tccc.compendium_unlocked.message_icon","font": "tcc.compendium:static"},{"translate":"tccc.compendium_locked.text"}]
# Show a toast
advancement grant @s only tcc:compendium/lock_compendium
# Enable unlockable mode
tag @s add tcc.unlockable_compendium
# Convert all unlocked compendiums into unlockable ones
function tcc:item/compendium/find_item/from/reset_item {id:"compendium"}
# Update the compendiums
function tcc:item/compendium/update_unlocks/main
