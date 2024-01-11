# Makes nibbled apple pies work

advancement revoke @s only tcc:technical/consume_item/nibbled_apple_pie
tag @s add tcc.scheduled.nibbled_apple_pie
tag @s[nbt={SelectedItem:{tag:{tcc:{id:"nibbled_apple_pie"}}}}] add tcc.scheduled.nibbled_apple_pie.mainhand
tag @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"nibbled_apple_pie"}}}]}] add tcc.scheduled.nibbled_apple_pie.offhand
schedule function tcc:item/apple_pie/nibbled/scheduled 1t
