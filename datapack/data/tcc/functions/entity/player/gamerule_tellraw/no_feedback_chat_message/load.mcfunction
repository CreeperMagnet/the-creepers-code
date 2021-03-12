############################################################
# Description: Removes the annoying "Executed X commands from function" message
# Creator: Ellivers
############################################################

tellraw @s ""
execute store result score @s tcc.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score @s tcc.dummy matches 1.. run schedule function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/scheduled 1t
