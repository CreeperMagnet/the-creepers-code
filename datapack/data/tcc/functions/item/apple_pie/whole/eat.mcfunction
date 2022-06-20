############################################################
# Makes apple pies work
############################################################

advancement revoke @s only tcc:technical/consume_item/apple_pie
tag @s add tcc.scheduled.apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"apple_pie"}}}}] add tcc.scheduled.apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"apple_pie"}}}]}] add tcc.scheduled.apple_pie.offhand
schedule function tcc:item/apple_pie/whole/scheduled 1t
scoreboard players add @s manic.sanity 20