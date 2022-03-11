############################################################
# Rotates the block you're looking at
############################################################

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"frostbloom"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"frostbloom"}}}}] weapon.mainhand with air
execute unless block ~ ~ ~ #tcc:frostbloom/snowy run summon item_frame ~ ~1 ~ {CustomName:'{"translate":"block.tcc.frostbloom"}',Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330003}},Facing:1b,Invulnerable:1b,Tags:["tcc.block","tcc.tick","tcc.second_clock","smithed.entity","tcc.frostbloom","smithed.block"],Silent:1b,Fixed:1b,Invisible:1b}
execute if block ~ ~ ~ #tcc:frostbloom/snowy run summon item_frame ~ ~1 ~ {CustomName:'{"translate":"block.tcc.frostbloom"}',Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330004}},Facing:1b,Invulnerable:1b,Tags:["tcc.block","tcc.tick","tcc.second_clock","smithed.entity","tcc.frostbloom","smithed.block"],Silent:1b,Fixed:1b,Invisible:1b}
setblock ~ ~1 ~ spruce_sapling
scoreboard players reset @s tcc.dummy
playsound minecraft:block.grass.place block @a[distance=..16]
