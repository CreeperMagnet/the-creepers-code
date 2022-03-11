############################################################
# Commands to break a positional anchor
############################################################

execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}'}}}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:blocks/positional_anchor
execute if entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item dropper{CustomModelData:330003} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
execute unless entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item dropper{CustomModelData:330002} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
function tcc:block/hopper_updating/undo
