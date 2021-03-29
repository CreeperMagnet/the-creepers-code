############################################################
# Description: Damages an offhand item using scoreboards
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.tag
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
function tcc:item/item_modification/durability/damage/rings/potion/modify_durability

item entity @s[tag=tcc.tag] weapon.offhand replace minecraft:carrot_on_a_stick
execute unless entity @s[tag=tcc.tag] run item entity @s weapon.offhand modify tcc:potion_durability_lore
execute unless entity @s[tag=tcc.tag] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[tag=tcc.tag] unless data storage tcc:storage root.temp.item.tag.tcc.gemstone{lore_attribute:1} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-3] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.tag] if data storage tcc:storage root.temp.item.tag.tcc.gemstone{lore_attribute:1} run data modify storage tcc:storage root.temp.item.tag.display.Lore[-6] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.tag] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
item entity @s weapon.offhand modify tcc:copy_nbt
