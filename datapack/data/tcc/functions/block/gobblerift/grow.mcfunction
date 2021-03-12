############################################################
# Description: Grow a gobblerift
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy2 0
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330042}}]}] HandItems[0].tag.CustomModelData set value 330044
tag @s[nbt={HandItems:[{tag:{CustomModelData:330044}}]}] remove tcc.gobblerift.juicing
tag @s[nbt={HandItems:[{tag:{CustomModelData:330044}}]}] add tcc.gobblerift.open_state
tag @s[nbt={HandItems:[{tag:{CustomModelData:330044}}]}] add tcc.gobblerift.juice_ready
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330038}}]}] HandItems[0].tag.CustomModelData set value 330040
tag @s[nbt={HandItems:[{tag:{CustomModelData:330040}}]}] add tcc.gobblerift.open_state
tag @s[nbt={HandItems:[{tag:{CustomModelData:330040}}]}] remove tcc.gobblerift.bonemealable
tag @s[nbt={HandItems:[{tag:{CustomModelData:330040}}]}] add tcc.gobblerift.hungry
tag @s[nbt={HandItems:[{tag:{CustomModelData:330040}}]}] add tcc.gobblerift.can_love
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330036}}]}] HandItems[0].tag.CustomModelData set value 330038
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330034}}]}] HandItems[0].tag.CustomModelData set value 330036
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330032}}]}] HandItems[0].tag.CustomModelData set value 330034
data modify entity @s[nbt={HandItems:[{tag:{CustomModelData:330030}}]}] HandItems[0].tag.CustomModelData set value 330032
tag @s[nbt={HandItems:[{tag:{CustomModelData:330036}}]}] add tcc.gobblerift.tall
