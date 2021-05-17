############################################################
# Description: Rotates the block you're looking at
# Creator: CreeperMagnet_
############################################################

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"frostbloom"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.mainhand with air
summon item_frame ~ ~1 ~ {CustomName:'{"translate":"block.tcc.frostbloom"}',Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330025}},Facing:1b,Invulnerable:1b,Tags:["tcc.block","tcc.entity","global.ignore","global.ignore.kill","global.ignore.pos","tcc.frostbloom"],Silent:1b,Fixed:1b,Invisible:1b}
setblock ~ ~1 ~ spruce_sapling
scoreboard players reset @s tcc.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
