############################################################
# Description: Damages a mainhand item using scoreboards
# Creator: CreeperMagnet_
############################################################
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.Items insert 0 from entity @s SelectedItem
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc{id:"obsidian_mirror"} run scoreboard players set @s tcc.dummy2 1
function tcc:item/item_modification/durability/modify_durability
execute unless entity @s[tag=tcc.break] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
execute if entity @s[tag=tcc.break] run replaceitem entity @s weapon.mainhand air
tag @s remove tcc.break
function #tcc:damage_advancements/revoke_mainhand
