############################################################
# Commands for the boomerang hitting a block and breaking
############################################################

data modify storage tcc:storage root.temp.item set from entity @s ArmorItems[3].tag.tcc.item
execute unless data entity @s ArmorItems[3].tag.tcc{gamemode:1} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
execute as @a[scores={tcc.boomerang_cooldown=1..}] run function tcc:item/boomerang/break_reset_cooldown
playsound tcc:item.boomerang.break player @a[distance=..64] ~ ~ ~ 4 1
kill @s
