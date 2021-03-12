############################################################
# Description: Subtracts an amount of xp points based on tcc.dummy
# Creator: CreeperMagnet_
############################################################

xp add @s -1 points
scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=..-1}] run function tcc:item/item_modification/durability/mend_items/xp_subtraction_loop
