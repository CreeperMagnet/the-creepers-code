############################################################
# Spawns ice above the player
############################################################

summon falling_block ~0.5 ~3.5 ~0.5 {Time:583,DropItem:0b,BlockState:{Name:"minecraft:frosted_ice",Properties:{age:"3"}},HurtEntities:1b,FallHurtAmount:5.0f,FallHurtMax:10,Tags:["tcc.tick","tcc.falling_ice"]}
