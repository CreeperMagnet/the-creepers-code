############################################################
# Description: Damages the cursed crown
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
scoreboard players set @s tcc.dummy2 1
function tcc:item/item_modification/durability/modify_durability

execute unless entity @s[tag=tcc.break] run item entity @s armor.head modify tcc:durability_lore
execute unless entity @s[tag=tcc.break] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:103b}]
execute unless entity @s[tag=tcc.break] run data modify storage tcc:storage root.temp.item.tag.display.Lore[0] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.break] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.break] run item entity @s armor.head modify tcc:copy_nbt
execute if entity @s[tag=tcc.break] run item entity @s armor.head replace air
tag @s remove tcc.break
