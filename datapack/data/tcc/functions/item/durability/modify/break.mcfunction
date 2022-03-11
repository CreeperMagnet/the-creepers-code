############################################################
# Commands to run if the item breaks
############################################################

playsound minecraft:entity.item.break player @a[distance=..16]
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"molten_mirror"} run particle item minecraft:carrot_on_a_stick{CustomModelData:330003} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"ring",ring:{metal:"minecraft:gold"}} run particle item minecraft:gold_ingot ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"ring",ring:{metal:"minecraft:iron"}} run particle item minecraft:iron_ingot ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"ring",ring:{metal:"minecraft:netherite"}} run particle item minecraft:netherite_ingot ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
function #tcc:dynamic_rings/break_ring
data remove storage tcc:storage root.temp.item
