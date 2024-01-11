# Summons an ender pearl to edit

summon minecraft:ender_pearl ~ ~1.6 ~ {Motion:[0.0,0.5,0.0],Owner:[I;0,0,0,0],Tags:["tcc.tag","smithed.entity"]}
data modify storage tcc:storage root.temp.owner set from entity @s item.tag.tcc.owner
execute as @e[tag=tcc.tag,type=minecraft:ender_pearl,limit=1,sort=nearest] run function tcc:block/positional_anchor/fire/edit_pearl
stopsound @a[distance=..16] * minecraft:block.dispenser.dispense
stopsound @a[distance=..16] * minecraft:block.dispenser.launch
stopsound @a[distance=..16] * minecraft:block.dispenser.fail

playsound tcc:block.positional_anchor.fire master @a[distance=..16]

data modify entity @s item.tag.CustomModelData set value 330002
setblock ~ ~ ~ minecraft:stone
setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor\\uF001"}
tag @s remove tcc.positional_anchor.filled
