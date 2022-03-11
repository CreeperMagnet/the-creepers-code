############################################################
# Creates the proper type of mansion stairs
############################################################

execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:-3,mode:"LOAD",posY:-18,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"tcc:mansion_basement/staircase_north",sizeY:22,sizeZ:7,showboundingbox:1b}
execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:-3,mode:"LOAD",posY:-19,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"tcc:mansion_basement/staircase_east",sizeY:23,sizeZ:7,showboundingbox:1b}
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:-3,mode:"LOAD",posY:-20,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"tcc:mansion_basement/staircase_south",sizeY:24,sizeZ:7,showboundingbox:1b}
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,rotation:"NONE",posX:-3,mode:"LOAD",posY:-21,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"tcc:mansion_basement/staircase_west",sizeY:25,sizeZ:7,showboundingbox:1b}
setblock ~ ~1 ~ redstone_block
