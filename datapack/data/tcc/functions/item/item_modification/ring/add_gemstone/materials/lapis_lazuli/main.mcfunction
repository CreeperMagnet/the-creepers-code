############################################################
# Description: Adds a gemstone to a ring
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.lapis_lazuli","italic":false}'
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.lapis_lazuli.pristine","italic":false,"color":"yellow"}'

data modify storage tcc:storage root.temp.item.tag.display.Lore append value '""'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"gray","translate":"item.modifiers.offhand"}'
execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} run data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"blue","translate":"attribute.modifier.plus.0","with":["1",{"translate":"attribute.name.tcc.mob_xp_bonus"}]}'
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} run data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"blue","translate":"attribute.modifier.plus.0","with":["2",{"translate":"attribute.name.tcc.mob_xp_bonus"}]}'

data modify storage tcc:storage root.temp.item.tag.tcc.gemstone.lore_attribute set value 1
scoreboard players set tcc.temp_1 tcc.dummy 338005
