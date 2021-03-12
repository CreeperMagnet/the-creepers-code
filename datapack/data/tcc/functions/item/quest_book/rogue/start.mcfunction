############################################################
# Description: Starts a quest
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy run gamerule announceAdvancements
advancement grant @s only tcc:minecraft/adventure/begin_quest
tag @s add tcc.quest.rogue
advancement grant @s only tcc:technical/item/quest_book/rogue/display/root
execute if entity @s[scores={tcc.dummy=1}] run tellraw @a [{"translate":"chat.tcc.quests.start","with":[{"selector":"@s"},{"translate":"chat.tcc.quests.brackets","color":"dark_purple","with":[{"translate":"advancements.tcc.quests.rogue.root.title","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"translate":"advancements.tcc.quests.rogue.root.title","color":"dark_purple"},"\n",{"translate":"advancements.tcc.quests.rogue.root.description","color":"white"}]}}]}]}]
scoreboard players reset @s tcc.dummy
