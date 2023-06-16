############################################################
# Breaks the gobblerift
############################################################

function tcc:block/gobblerift/array_management/deactivate
loot spawn ~ ~ ~ loot tcc:blocks/gobblerift
execute on passengers if entity @s[tag=tcc.gobblerift.tall] run particle minecraft:item minecraft:warped_fungus_on_a_stick{CustomModelData:330008} ~ ~1.2 ~ 0.2 0.7 0.2 0.05 40 normal
execute on passengers if entity @s[tag=!tcc.gobblerift.tall] run particle minecraft:item minecraft:warped_fungus_on_a_stick{CustomModelData:330008} ~ ~0.2 ~ 0.2 0.2 0.2 0.05 20 normal
execute on passengers run kill @s
kill @s
playsound tcc:block.gobblerift.break block @a[distance=..16]
