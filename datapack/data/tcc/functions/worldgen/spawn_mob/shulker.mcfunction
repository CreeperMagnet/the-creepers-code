############################################################
# Description: Summons a mob
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ command_block[facing=up] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:0b,Color:16b}
execute if block ~ ~ ~ command_block[facing=down] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:1b,Color:16b}
execute if block ~ ~ ~ command_block[facing=south] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:2b,Color:16b}
execute if block ~ ~ ~ command_block[facing=north] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:3b,Color:16b}
execute if block ~ ~ ~ command_block[facing=east] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:4b,Color:16b}
execute if block ~ ~ ~ command_block[facing=west] run summon shulker ~ ~ ~ {PersistenceRequired:1b,AttachFace:5b,Color:16b}
setblock ~ ~ ~ air