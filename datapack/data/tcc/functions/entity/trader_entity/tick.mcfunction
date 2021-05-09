############################################################
# Description: Ticks a living entity with a wandering trader base
# Creator: CreeperMagnet_
############################################################


# Quick notes by dragoncommands
# model_items 0 = idle
# model_items 1 = moving
# model_items 2 = spellcasting

execute if entity @s[tag=!tcc.trader_entity.still,predicate=!tcc:moving] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tcc.storage.model_items[0]
execute if entity @s[tag=!tcc.trader_entity.still,predicate=tcc:moving] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tcc.storage.model_items[1]
execute if entity @s[tag=tcc.trader_entity.still] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3].tag.tcc.storage.model_items[2]

execute if entity @s[nbt={HurtTime:0s}] unless entity @s[nbt=!{HandItems:[{tag:{display:{color:14586514}}}]},nbt=!{ArmorItems:[{tag:{display:{color:14586514}}}]}] run function tcc:entity/trader_entity/unhurt
execute if entity @s[nbt=!{HurtTime:0s},nbt=!{HandItems:[{tag:{display:{color:14586514}}}]}] run function tcc:entity/trader_entity/hurt
