############################################################
# Summons an wandering witch
############################################################

execute summon wandering_trader run function tcc:entity/wandering_witch/initiate_trader

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.wandering_witch"}]}
tag @s[type=player] add tcc.no_space
execute if entity @s[type=player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
