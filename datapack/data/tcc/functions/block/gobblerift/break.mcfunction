############################################################
# Description: Breaks the gobblerift
# Creator: CreeperMagnet_
############################################################

function tcc:block/gobblerift/remove_array_entry/start
data modify entity @s AbsorptionAmount set value 0.0f
execute if entity @p[gamemode=creative,advancements={tcc:technical/block/gobblerift/hurt=true}] unless entity @s[tag=tcc.gobblerift.custom_name] run data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s
tp @s ~ -1000 ~
execute if entity @s[tag=tcc.gobblerift.tall] run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:330037} ~ ~1.2 ~ 0.2 0.7 0.2 0.05 40 normal
execute if entity @s[tag=!tcc.gobblerift.tall] run particle minecraft:item minecraft:carrot_on_a_stick{CustomModelData:330037} ~ ~0.2 ~ 0.2 0.2 0.2 0.05 20 normal
playsound tcc:block.gobblerift.break block @a[distance=..16]