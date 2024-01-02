############################################################
# Moves the boomerang one block
############################################################

scoreboard players set @s tcc.dummy 0
function tcc:item/boomerang/iterate
scoreboard players add @s tcc.dummy2 1
function tcc:item/boomerang/tick_update
