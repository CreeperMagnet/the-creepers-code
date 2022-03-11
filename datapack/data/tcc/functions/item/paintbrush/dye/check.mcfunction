############################################################
# Begins paintbrush raycast
############################################################

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run clear @s #tcc:dyes 0
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:item/paintbrush/dye/offhand_check
tag @s add tcc.paintbrush.raycaster
execute anchored eyes run function tcc:item/paintbrush/raycast
tag @s remove tcc.paintbrush.raycaster
tag @s remove tcc.tag
