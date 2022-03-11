############################################################
# Rotates the block you're looking at
############################################################

item replace entity @s[gamemode=!creative,nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"teapot"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"teapot"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"teapot"}}}}] weapon.mainhand with air
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run summon wandering_trader ~0.5 -1000 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[0.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330086}}],NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["tcc.block","tcc.tick","smithed.entity","smithed.block","tcc.teapot","tcc.ten_second_clock","tcc.second_clock","tcc.teapot.newly_spawned","tcc.cannot_glow"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=east] run summon wandering_trader ~0.5 -1000 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[90.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330086}}],NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["tcc.block","tcc.tick","smithed.entity","smithed.block","tcc.teapot","tcc.ten_second_clock","tcc.second_clock","tcc.teapot.newly_spawned","tcc.cannot_glow"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run summon wandering_trader ~0.5 -1000 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[180.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330086}}],NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["tcc.block","tcc.tick","smithed.entity","smithed.block","tcc.teapot","tcc.ten_second_clock","tcc.second_clock","tcc.teapot.newly_spawned","tcc.cannot_glow"],Silent:1b}
execute if block ~ ~ ~ #minecraft:campfires[facing=west] run summon wandering_trader ~0.5 -1000 ~0.5 {CustomName:'{"translate":"item.tcc.teapot"}',Rotation:[270.0f,0.0f],HandItems:[{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330086}}],NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Tags:["tcc.block","tcc.tick","smithed.entity","smithed.block","tcc.teapot","tcc.ten_second_clock","tcc.second_clock","tcc.teapot.newly_spawned","tcc.cannot_glow"],Silent:1b}
execute as @e[type=wandering_trader,tag=tcc.teapot.newly_spawned] run function tcc:block/teapot/initiate
playsound minecraft:block.wood.place block @a[distance=..16]
