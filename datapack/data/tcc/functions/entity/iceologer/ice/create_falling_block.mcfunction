############################################################
# Spawns ice above the player
############################################################

summon falling_block ~0.5 ~3.5 ~0.5 {TileEntityData:{},Time:583,DropItem:0b,BlockState:{Name:"minecraft:frosted_ice",Properties:{age:"3"}},HurtEntities:1b,FallHurtAmount:5.0f,FallHurtMax:10,Tags:["tcc.tick","tcc.falling_ice","tcc.newly_spawned_falling_ice"]}
execute as @e[type=falling_block,tag=tcc.newly_spawned_falling_ice,limit=1] run function tcc:entity/iceologer/ice/initiate