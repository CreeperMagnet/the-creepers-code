############################################################
# Reset a compendium item in the main inventory
############################################################

# Kept separate because the offhand item position causes the macro to make this command invalid
$loot replace entity @s inventory.$(pos) loot tcc:technical/copy_nbt/$(type)
