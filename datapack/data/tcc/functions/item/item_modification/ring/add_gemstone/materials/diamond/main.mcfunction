############################################################
# Description: Adds a gemstone to a ring
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.diamond","italic":false}'
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.diamond.pristine","italic":false,"color":"yellow"}'

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:2.0d,Slot:"offhand",AttributeName:"minecraft:generic.max_health",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.max_health"}]
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:4.0d,Slot:"offhand",AttributeName:"minecraft:generic.max_health",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.max_health"}]

scoreboard players set tcc.temp_1 tcc.dummy 338002
