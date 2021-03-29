############################################################
# Description: Adds a gemstone to a ring
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.emerald","italic":false}'
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.item.tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.emerald.pristine","italic":false,"color":"yellow"}'

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:1.0d,Slot:"offhand",AttributeName:"minecraft:generic.luck",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.luck"}]
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:2.0d,Slot:"offhand",AttributeName:"minecraft:generic.luck",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.luck"}]

scoreboard players set tcc.temp_1 tcc.dummy 338003
