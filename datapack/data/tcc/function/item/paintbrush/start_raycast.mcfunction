# Begins paintbrush raycast

data remove storage tcc:temp root

execute if items entity @s weapon.offhand #tcc:dyes run data modify storage tcc:temp root.item.id set from entity @s equipment.offhand.id
execute if items entity @s weapon.mainhand #tcc:dyes run data modify storage tcc:temp root.item.id set from entity @s SelectedItem.id

tag @s add tcc.paintbrush.raycaster

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:item/paintbrush/raycast

tag @s remove tcc.paintbrush.raycaster