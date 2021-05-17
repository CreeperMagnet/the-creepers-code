############################################################
# Description: Damages a mainhand item using scoreboards
# Creator: CreeperMagnet_
############################################################
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless data storage tcc:storage root.temp.item.tag.tcc{id:"obsidian_mirror"} run scoreboard players set @s tcc.dummy2 1
function tcc:item/item_modification/durability/modify_durability

execute unless entity @s[tag=tcc.break] run item modify entity @s weapon.offhand tcc:durability_lore
execute unless entity @s[tag=tcc.break] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[tag=tcc.break] run data modify storage tcc:storage root.temp.item.tag.display.Lore[0] set from storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.break] run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute unless entity @s[tag=tcc.break] run item modify entity @s weapon.offhand tcc:copy_nbt
execute if entity @s[tag=tcc.break] run item replace entity @s weapon.offhand with air
tag @s remove tcc.break
function #tcc:damage_advancements/revoke_offhand
