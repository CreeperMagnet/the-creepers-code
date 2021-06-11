############################################################
# Description: Commands to break a positional anchor
# Creator: CreeperMagnet_
############################################################

execute store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}'}}}}]
execute if score tcc.temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:blocks/positional_anchor
execute if entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item dropper{CustomModelData:330033} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
execute unless entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item dropper{CustomModelData:330032} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
kill @e[type=item,nbt={Item:{tag:{tcc:{id:"positional_anchor_item"}}}},distance=..7]
function tcc:block/hopper_updating/undo
