############################################################
# Ticking for archaeologist
############################################################

item replace entity @s[nbt=!{HandItems:[{id:"minecraft:structure_block",tag:{CustomModelData:330064}}]}] weapon.mainhand with minecraft:structure_block{CustomModelData:330064}
item replace entity @s[nbt={HurtTime:0s,ArmorItems:[{id:"minecraft:structure_block",tag:{CustomModelData:330063}}]}] armor.head with minecraft:structure_block{CustomModelData:330062}
execute if entity @s[nbt=!{HurtTime:0s}] run function tcc:entity/archaeologist/hurt

execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run function tcc:entity/archaeologist/level_up/main
execute unless data entity @s[nbt={Xp:0}] Brain.memories."minecraft:job_site".value run function tcc:entity/archaeologist/reset
