summon ender_pearl ~ ~1 ~ {Motion:[0.0,0.5,0.0],Owner:[I;0,0,0,0],Tags:["tcc.tag","global.ignore"]}

data modify entity @e[tag=tcc.tag,type=ender_pearl,limit=1,sort=nearest] Owner set from entity @s ArmorItems[3].tag.tcc.owner
tag @e[type=ender_pearl] remove tcc.tag
schedule function tcc:block/positional_anchor/kill_item 4t append
stopsound @a[distance=..16] * block.dispenser.dispense
stopsound @a[distance=..16] * block.dispenser.launch
stopsound @a[distance=..16] * block.dispenser.fail

playsound tcc:block.positional_anchor.fire master @a[distance=..16]

data modify entity @s ArmorItems[3].tag.CustomModelData set value 330032
setblock ~ ~ ~ stone
setblock ~ ~ ~ dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"positional_anchor\\uF001"}
tag @s remove tcc.positional_anchor.filled