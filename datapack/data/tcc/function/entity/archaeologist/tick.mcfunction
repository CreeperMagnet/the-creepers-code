# Ticking for archaeologist

item replace entity @s weapon.mainhand with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/body/main"]

execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run function tcc:entity/archaeologist/level_up/main
execute unless data entity @s[nbt={Xp:0}] Brain.memories."minecraft:job_site".value run function tcc:entity/archaeologist/reset

execute if entity @s[nbt=!{HurtTime:0s}] run return run function tcc:entity/archaeologist/hurt
item replace entity @s armor.head with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/head/main"]