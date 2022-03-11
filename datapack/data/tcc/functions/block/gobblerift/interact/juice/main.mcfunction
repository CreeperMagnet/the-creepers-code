############################################################
# Take juice from gobblerift
############################################################

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
execute unless entity @s[nbt={CustomName:'{"translate":"block.tcc.gobblerift"}'}] run data modify storage tcc:storage root.temp.name set from entity @s CustomName
data modify storage tcc:storage root.temp.id set from entity @s ArmorItems[3].tag.tcc.id