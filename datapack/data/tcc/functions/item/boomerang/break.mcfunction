############################################################
# Commands for the boomerang hitting a block and breaking
############################################################

data modify storage tcc:storage root.temp.item set from entity @s item.tag.tcc.item
execute unless data entity @s item.tag.tcc{gamemode:1} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
$scoreboard players reset @p[nbt={UUID:$(UUID)}] tcc.boomerang_cooldown
playsound tcc:item.boomerang.break player @a[distance=..64] ~ ~ ~ 4 1
kill @s
