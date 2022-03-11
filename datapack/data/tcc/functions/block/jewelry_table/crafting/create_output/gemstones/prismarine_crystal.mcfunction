############################################################
# Adds a gemstone to a ring
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.ring.gemstone set value "minecraft:prismarine_crystal"

execute unless data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:0.10d,Slot:"offhand",AttributeName:"minecraft:generic.attack_speed",Operation:1,UUID:[I; -2, 0, 3, 3],Name:"generic.attack_speed"}]
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:0.20d,Slot:"offhand",AttributeName:"minecraft:generic.attack_speed",Operation:1,UUID:[I; -2, 0, 3, 3],Name:"generic.attack_speed"}]
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers append value {Amount:0.1d,Slot:"offhand",AttributeName:"minecraft:generic.knockback_resistance",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.knockback_resistance"}

# Custom model data value
scoreboard players add @s tcc.dummy 339500
