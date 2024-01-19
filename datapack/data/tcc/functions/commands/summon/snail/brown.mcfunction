# Summons a snail

function tcc:entity/snail/summon/spawn

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.snail"}]}
tag @s[type=minecraft:player] add tcc.no_space
execute if entity @s[type=minecraft:player] run function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
