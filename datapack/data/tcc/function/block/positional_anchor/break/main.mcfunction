# Commands to break a positional anchor

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}'},id:"minecraft:dropper"}}] at @s run function tcc:block/positional_anchor/break/kill_item
execute if entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/positional_anchor/filled"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute unless entity @s[tag=tcc.positional_anchor.filled] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/positional_anchor/empty"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute if entity @s[tag=tcc.positional_anchor.filled] run loot spawn ~ ~ ~ loot tcc:blocks/positional_anchor_ender_pearl
kill @s
function tcc:block/hopper_updating/undo
