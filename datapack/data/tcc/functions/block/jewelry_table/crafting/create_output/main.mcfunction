############################################################
# Creates the output based on the input
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.CustomModelData
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:amethyst_shard"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/amethyst
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:diamond"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/diamond
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:emerald"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/emerald
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:ender_pearl"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/ender_pearl
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:lapis_lazuli"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/lapis_lazuli
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:prismarine_crystals"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/prismarine_crystal
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:6b,id:"minecraft:quartz"}] run function tcc:block/jewelry_table/crafting/create_output/gemstones/quartz
function #tcc:dynamic_rings/add_gemstone
execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players get @s tcc.dummy

execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:amethyst"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.amethyst","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:diamond"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.diamond","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:emerald"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.emerald","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:ender_pearl"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.ender_pearl","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:lapis_lazuli"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.lapis_lazuli","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:prismarine_crystal"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.prismarine_crystal","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"minecraft:quartz"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.minecraft.quartz","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:gold",gemstone:"dnd:amber"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.gold.dnd.amber","italic":false}'

execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:amethyst"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.amethyst","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:diamond"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.diamond","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:emerald"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.emerald","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:ender_pearl"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.ender_pearl","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:lapis_lazuli"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.lapis_lazuli","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:prismarine_crystal"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.prismarine_crystal","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"minecraft:quartz"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.minecraft.quartz","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:iron",gemstone:"dnd:amber"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.iron.dnd.amber","italic":false}'

execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:amethyst"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.amethyst","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:diamond"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.diamond","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:emerald"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.emerald","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:ender_pearl"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.ender_pearl","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:lapis_lazuli"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.lapis_lazuli","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:prismarine_crystal"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.prismarine_crystal","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"minecraft:quartz"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.minecraft.quartz","italic":false}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite",gemstone:"dnd:amber"} run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.minecraft.netherite.dnd.amber","italic":false}'

data modify block ~ ~ ~ Items[{Slot:4b}] set from storage tcc:storage root.temp.item
tag @s add tcc.jewelry_table.assembled_output