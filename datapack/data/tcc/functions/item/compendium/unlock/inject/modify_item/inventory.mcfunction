# Copies the modified NBT to a compendium in the main inventory

# Kept separate because the offhand item position causes the macro to make this command invalid
$item modify entity @s inventory.$(pos) tcc:copy_nbt
