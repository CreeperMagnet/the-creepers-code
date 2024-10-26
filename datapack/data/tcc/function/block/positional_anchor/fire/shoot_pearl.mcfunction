# Summons an ender pearl to edit

function tcc:block/positional_anchor/fire/summon_pearl_macro with entity @s item.components."minecraft:custom_data"

stopsound @a[distance=..16] * minecraft:block.dispenser.dispense
stopsound @a[distance=..16] * minecraft:block.dispenser.launch
stopsound @a[distance=..16] * minecraft:block.dispenser.fail

playsound tcc:block.positional_anchor.fire master @a[distance=..16]

data modify entity @s item.components."minecraft:item_model" set value "tcc:block/positional_anchor/empty"
setblock ~ ~ ~ minecraft:stone
setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',lock:{components:{"minecraft:custom_data":{tcc:{positional_anchor:1b}}}}}
tag @s remove tcc.positional_anchor.filled
