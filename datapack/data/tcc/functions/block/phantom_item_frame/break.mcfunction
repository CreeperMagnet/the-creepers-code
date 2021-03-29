############################################################
# Description: Commands for breaking the frame
# Creator: Ellivers
############################################################

# Give back the item if the frame has an item
execute unless entity @s[tag=tcc.phantom_item_frame.empty] run function tcc:block/phantom_item_frame/break.return_item
scoreboard players set @s tcc.dummy 1
# Make sure it doesn't drop in creative, but still does when its supporting block is broken
function tcc:block/phantom_item_frame/pop_off_check/all_faces
execute if entity @s[tag=tcc.phantom_item_frame.empty] unless entity @s[scores={tcc.dummy2=1}] store success score @s tcc.dummy run kill @e[type=minecraft:item,distance=..1,nbt={OnGround:0b,Item:{tag:{tcc:{id:"phantom_item_frame_model"}}}},limit=1]
execute if score @s tcc.dummy matches 1 at @s run loot spawn ^ ^ ^.1 loot tcc:items/phantom_item_frame

execute if entity @s[scores={tcc.dummy2=1}] run playsound entity.item_frame.break block @a[distance=..16]
kill @s
