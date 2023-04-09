############################################################
# Take juice from gobblerift
############################################################

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
execute on vehicle unless entity @s[nbt={CustomName:'{"translate":"block.tcc.gobblerift"}'}] run data modify storage tcc:storage root.temp.name set from entity @s CustomName
execute on vehicle run data modify storage tcc:storage root.temp.id set from entity @s item.tag.id
execute on target run function tcc:block/gobblerift/interact/juice/as_player