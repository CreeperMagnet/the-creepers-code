############################################################
# Takes experience from the locket
############################################################

# gives the player 31 points
experience add @s 31 points

# sound
# the pitch is from 0.55 to 1.25
execute store result storage tcc:storage root.temp.pitch.value float 0.01 run random value 55..125
function tcc:item/locket_of_learning/withdraw_sound with storage tcc:storage root.temp.pitch

# mending
data modify storage tcc:storage root.temp.item_2 set from storage tcc:storage root.temp.item
scoreboard players set @s tcc.old_xp -31
tag @s add tcc.repair_vanilla_items
function tcc:item/durability/mending/repair_item
data modify storage tcc:storage root.temp.item set from storage tcc:storage root.temp.item_2

# decrements the score by 1, to later store back into the locket data
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.stored_points 0.9999999999

# run ending function
function tcc:item/locket_of_learning/end
