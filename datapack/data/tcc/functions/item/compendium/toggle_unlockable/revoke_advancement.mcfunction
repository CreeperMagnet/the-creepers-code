############################################################
# Revokes toast advancements for toggling
############################################################

# I guess scheduling is necessary...

tag @s add tcc.toggleable_compendium_advancement
schedule function tcc:item/compendium/toggle_unlockable/revoke_advancement_scheduled 3t
