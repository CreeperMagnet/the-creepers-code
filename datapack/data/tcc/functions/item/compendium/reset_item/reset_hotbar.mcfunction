############################################################
# Reset a compendium item on the hotbar
############################################################

# Kept separate because most inventory item positions cause the macro to make this command invalid
$loot replace entity @s hotbar.$(pos) loot tcc:technical/copy_nbt/$(type)
