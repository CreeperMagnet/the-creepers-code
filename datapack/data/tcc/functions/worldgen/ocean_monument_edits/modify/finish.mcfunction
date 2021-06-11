############################################################
# Description: Finishes off the generation of the new monument, clearing out old entities and adding in new content
# Creator: CreeperMagnet_
############################################################

execute positioned ~-40 0 ~-40 run kill @e[type=elder_guardian,dx=80,dy=256,dz=80]
execute positioned ~-40 0 ~-40 run kill @e[type=item,dx=80,dy=256,dz=80]

setblock ~ ~ ~ minecraft:structure_block[mode=load]{author:"CreeperMagnet_",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"tcc:monument/1",posX:-29,posY:-27,posZ:-30,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:30,sizeY:36,sizeZ:31}
setblock ~1 ~ ~ minecraft:structure_block[mode=load]{author:"CreeperMagnet_",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"tcc:monument/2",posX:0,posY:-27,posZ:-30,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:31,sizeY:36,sizeZ:31}
setblock ~1 ~ ~1 minecraft:structure_block[mode=load]{author:"CreeperMagnet_",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"tcc:monument/3",posX:0,posY:-27,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:31,sizeY:36,sizeZ:30}
setblock ~ ~ ~1 minecraft:structure_block[mode=load]{author:"CreeperMagnet_",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"tcc:monument/4",posX:-29,posY:-27,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:30,sizeY:36,sizeZ:30}
fill ~ ~1 ~ ~1 ~1 ~1 redstone_block
kill @s
