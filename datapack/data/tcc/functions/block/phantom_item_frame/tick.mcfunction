############################################################
# Description: Tickly commands for the phantom item frame, which is a really long name
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy if data entity @s Item
execute if entity @s[tag=tcc.phantom_item_frame.empty] if score @s tcc.dummy matches 0 run function tcc:block/phantom_item_frame/break
execute unless entity @s[tag=tcc.phantom_item_frame.empty] if score @s tcc.dummy matches 0 run function tcc:block/phantom_item_frame/remove_item
function tcc:block/phantom_item_frame/pop_off_check/all_faces
execute if entity @s[scores={tcc.dummy2=1}] run function tcc:block/phantom_item_frame/break
