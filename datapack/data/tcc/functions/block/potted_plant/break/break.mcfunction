data modify storage tcc:storage root.temp.item set from entity @s item.tag.tcc.item
execute on passengers run kill @s
kill @s

execute if score #temp_0 tcc.dummy matches 1 run return 0
execute if data storage tcc:storage root.temp.item{id:"minecraft:warped_fungus_on_a_stick"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
execute if data storage tcc:storage root.temp.item{id:"minecraft:sweet_berries"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/sweet_berries
execute if data storage tcc:storage root.temp.item{id:"minecraft:twisting_vines"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/twisting_vines
execute if data storage tcc:storage root.temp.item{id:"minecraft:sunflower"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/sunflower
execute if data storage tcc:storage root.temp.item{id:"minecraft:peony"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/peony
execute if data storage tcc:storage root.temp.item{id:"minecraft:lilac"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/lilac
execute if data storage tcc:storage root.temp.item{id:"minecraft:rose_bush"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/rose_bush
execute if data storage tcc:storage root.temp.item{id:"minecraft:pitcher_plant"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/pitcher_plant
execute if data storage tcc:storage root.temp.item{id:"minecraft:chorus_flower"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/chorus_flower
execute if data storage tcc:storage root.temp.item{id:"minecraft:small_dripleaf"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/small_dripleaf
execute if data storage tcc:storage root.temp.item{id:"minecraft:big_dripleaf"} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/potted_plant/big_dripleaf
