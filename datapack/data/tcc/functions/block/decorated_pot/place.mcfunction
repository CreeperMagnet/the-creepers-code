############################################################
# Commands to place a decorated pot
############################################################

setblock ~ ~ ~ air
summon item_display ~ ~ ~ {Passengers:[{Tags:["tcc.decorated_pot_passenger","tcc.block","tcc.ten_second_clock"],Rotation:[180.0f,0.0f],id:"minecraft:item_display",transformation:{translation:[0.001f,0.501f,-0.001f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.005f,1.005f,1.005f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:decorated_pot",Count:1b,tag:{CustomModelData:330000}}}],CustomName:'{"translate":"block.minecraft.decorated_pot"}',Tags:["tcc.decorated_pot","tcc.decorated_pot.initiate","tcc.block","tcc.tick","smithed.entity","smithed.block"],transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.005f,1.005f,1.005f], right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:decorated_pot",Count:1b,tag:{CustomModelData:330000}}}
execute as @e[type=item_display,limit=1,distance=..1,tag=tcc.decorated_pot.initiate] run function tcc:block/decorated_pot/initiate
setblock ~ ~ ~ decorated_pot{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]}
