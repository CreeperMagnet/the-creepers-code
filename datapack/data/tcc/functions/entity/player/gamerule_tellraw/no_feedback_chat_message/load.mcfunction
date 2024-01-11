# Removes the annoying "Executed X commands from function" message

tellraw @s[tag=!tcc.no_space] ""
tag @s remove tcc.no_space
execute store result score @s tcc.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score @s tcc.dummy matches 1.. run schedule function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/scheduled 1t
