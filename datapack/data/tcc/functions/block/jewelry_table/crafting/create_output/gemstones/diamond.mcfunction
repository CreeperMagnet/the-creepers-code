############################################################
# Adds a gemstone to a ring
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.ring.gemstone set value "minecraft:diamond"

execute unless data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:2.0d,Slot:"offhand",AttributeName:"minecraft:generic.max_health",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.max_health"}]
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:4.0d,Slot:"offhand",AttributeName:"minecraft:generic.max_health",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.max_health"}]
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers append value {Amount:0.1d,Slot:"offhand",AttributeName:"minecraft:generic.knockback_resistance",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.knockback_resistance"}

# Custom model data value
scoreboard players add @s tcc.dummy 339100
