############################################################
# Commands to run if the item breaks
############################################################

playsound minecraft:entity.item.break player @a[distance=..16]
execute if data storage tcc:storage root.temp.item.tag.tcc{id:"molten_mirror"} run particle item minecraft:warped_fungus_on_a_stick{CustomModelData:330003} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
data remove storage tcc:storage root.temp.item
