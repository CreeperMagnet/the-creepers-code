############################################################
# Breaks the gobblerift
############################################################

function tcc:block/gobblerift/array_management/deactivate
data modify entity @s AbsorptionAmount set value 0.0f
kill @s
execute if entity @s[tag=tcc.gobblerift.tall] run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:330008} ~ ~1.2 ~ 0.2 0.7 0.2 0.05 40 normal
execute if entity @s[tag=!tcc.gobblerift.tall] run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:330008} ~ ~0.2 ~ 0.2 0.2 0.2 0.05 20 normal
playsound tcc:block.gobblerift.break block @a[distance=..16]
