############################################################
# Description: Rotates the block you're looking at
# Creator: CreeperMagnet_
############################################################

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"teapot"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"teapot"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"teapot"}}}}] weapon.mainhand with air
execute if block ~ ~ ~ #minecraft:campfires[facing=east] run summon villager ~0.5 ~0.4375 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[0.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330023}}],NoAI:1b,Invulnerable:1b,Age:-32767s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["tcc.block","tcc.entity","global.ignore","global.ignore.kill","global.ignore.pos","tcc.teapot","tcc.teapot.empty"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run summon villager ~0.5 ~0.4375 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[270.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330023}}],NoAI:1b,Invulnerable:1b,Age:-32767s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["tcc.block","tcc.entity","global.ignore","global.ignore.kill","global.ignore.pos","tcc.teapot","tcc.teapot.empty"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=west] run summon villager ~0.5 ~0.4375 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[180.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330023}}],NoAI:1b,Invulnerable:1b,Age:-32767s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["tcc.block","tcc.entity","global.ignore","global.ignore.kill","global.ignore.pos","tcc.teapot","tcc.teapot.empty"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run summon villager ~0.5 ~0.4375 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[90.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330023}}],NoAI:1b,Invulnerable:1b,Age:-32767s,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["tcc.block","tcc.entity","global.ignore","global.ignore.kill","global.ignore.pos","tcc.teapot","tcc.teapot.empty"],Silent:1b}

scoreboard players reset @s tcc.dummy
playsound minecraft:block.wood.place block @a[distance=..16]
