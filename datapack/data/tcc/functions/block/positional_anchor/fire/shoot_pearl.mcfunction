# Summons an ender pearl to edit

function tcc:block/positional_anchor/fire/summon_pearl_macro with entity @s item.components."minecraft:custom_data"

stopsound @a[distance=..16] * minecraft:block.dispenser.dispense
stopsound @a[distance=..16] * minecraft:block.dispenser.launch
stopsound @a[distance=..16] * minecraft:block.dispenser.fail

playsound tcc:block.positional_anchor.fire master @a[distance=..16]

data modify entity @s item.components."minecraft:custom_model_data" set value 330002
setblock ~ ~ ~ minecraft:stone
setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor\\uF001"}
tag @s remove tcc.positional_anchor.filled
