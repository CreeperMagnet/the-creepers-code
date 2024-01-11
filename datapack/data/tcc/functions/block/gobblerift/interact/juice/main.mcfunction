# Take juice from gobblerift

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
execute on vehicle if data entity @s CustomName run data modify storage tcc:storage root.temp.name set from entity @s CustomName
execute on vehicle run data modify storage tcc:storage root.temp.id set from entity @s item.tag.id
execute on target at @s run function tcc:block/gobblerift/interact/juice/as_player