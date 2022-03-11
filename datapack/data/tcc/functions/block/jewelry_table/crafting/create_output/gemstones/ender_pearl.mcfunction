############################################################
# Adds a gemstone to a ring
############################################################

data modify storage tcc:storage root.temp.item.tag.tcc.ring.gemstone set value "minecraft:ender_pearl"

data modify storage tcc:storage root.temp.item.tag.display.Lore append value '""'
data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"gray","translate":"item.modifiers.offhand"}'
execute unless data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"blue","translate":"attribute.modifier.plus.0","with":["3",{"translate":"attribute.name.tcc.item_teleportation_range"}]}'

# Netherite Option
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.AttributeModifiers set value [{Amount:0.1d,Slot:"offhand",AttributeName:"minecraft:generic.knockback_resistance",Operation:0,UUID:[I; -2, 0, 3, 3],Name:"generic.knockback_resistance"}]
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.HideFlags set value 6
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"blue","translate":"attribute.modifier.plus.0","with":["6",{"translate":"attribute.name.tcc.item_teleportation_range"}]}'
execute if data storage tcc:storage root.temp.item.tag.tcc.ring{metal:"minecraft:netherite"} run data modify storage tcc:storage root.temp.item.tag.display.Lore append value '{"italic":false,"color":"blue","translate":"attribute.modifier.plus.0","with":["1",{"translate":"attribute.name.generic.knockback_resistance"}]}'

# Custom model data value
scoreboard players add @s tcc.dummy 339300
