# Functions to run when this entity is hurt

data modify entity @s HandDropChances set value [-10000.0f,-10000.0f]
item replace entity @s weapon.mainhand with minecraft:structure_block[minecraft:custom_model_data=330065]
item replace entity @s armor.head with minecraft:structure_block[minecraft:custom_model_data=330063]