############################################################
# Description: Summons an iceologer
# Creator: CreeperMagnet_
############################################################

function tcc:entity/snail/summon/spawn

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.snail"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
