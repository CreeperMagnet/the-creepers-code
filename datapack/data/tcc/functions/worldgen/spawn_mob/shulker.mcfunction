############################################################
# Description: Summons a mob
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ command_block[facing=up] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:0b,Color:16b}
execute if block ~ ~ ~ command_block[facing=down] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:1b,Color:16b}
execute if block ~ ~ ~ command_block[facing=south] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:2b,Color:16b}
execute if block ~ ~ ~ command_block[facing=north] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:3b,Color:16b}
execute if block ~ ~ ~ command_block[facing=east] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:4b,Color:16b}
execute if block ~ ~ ~ command_block[facing=west] align xyz run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:5b,Color:16b}
setblock ~ ~ ~ air
