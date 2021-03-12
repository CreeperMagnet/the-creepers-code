############################################################
# Description: Adds a gemstone to a ring
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.Items[0].tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.prismarine_crystal","italic":false}'
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} if data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.Items[0].tag.display.Name set value '{"translate":"item.tcc.ring.gemstone.prismarine_crystal.pristine","italic":false,"color":"yellow"}'

execute if data storage tcc:storage root.temp.gemstone{quality:"cut"} run data modify storage tcc:storage root.temp.Items[0].tag.AttributeModifiers set value [{Amount:0.10d,Slot:"offhand",AttributeName:"minecraft:generic.attack_speed",Operation:1,UUID:[I; -2, 0, 3, 3],Name:"generic.attack_speed"}]
execute if data storage tcc:storage root.temp.gemstone{quality:"pristine"} run data modify storage tcc:storage root.temp.Items[0].tag.AttributeModifiers set value [{Amount:0.20d,Slot:"offhand",AttributeName:"minecraft:generic.attack_speed",Operation:1,UUID:[I; -2, 0, 3, 3],Name:"generic.attack_speed"}]

scoreboard players set tcc.temp_1 tcc.dummy 338007
