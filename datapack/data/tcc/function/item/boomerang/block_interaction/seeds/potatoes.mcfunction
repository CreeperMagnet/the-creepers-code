# Drops the proper amount of harvested crops from this block

setblock ~ ~ ~ minecraft:potatoes
particle minecraft:block{block_state:{Name:"minecraft:potatoes",Properties:{age:"7"}}} ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.crop.break block @a[distance=..16]
execute if entity @s[tag=tcc.boomerang.on_fire,tag=!tcc.boomerang.cooked_potato] run function tcc:item/boomerang/block_interaction/seeds/potatoes_advancement with storage tcc:temp root.boomerang.macro_input
execute if entity @s[tag=tcc.boomerang.on_fire] run return run loot spawn ~ ~ ~ loot tcc:blocks/boomerang/potatoes_fire
loot spawn ~ ~ ~ loot tcc:blocks/boomerang/potatoes