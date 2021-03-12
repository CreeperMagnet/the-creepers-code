############################################################
# Description: Finishes a quest
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy run gamerule announceAdvancements
tag @s remove tcc.quest.warrior
advancement revoke @s through tcc:technical/item/quest_book/warrior/display/root
execute if entity @s[predicate=tcc:full_inventory] run loot spawn ~ ~ ~ loot tcc:items/complete_warrior_quest_book
loot give @s[predicate=!tcc:full_inventory] loot tcc:items/complete_warrior_quest_book
execute if entity @s[scores={tcc.dummy=1}] run tellraw @a [{"translate":"chat.tcc.quests.complete","with":[{"selector":"@s"},{"translate":"chat.tcc.quests.brackets","color":"dark_purple","with":[{"translate":"advancements.tcc.quests.warrior.root.title","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"translate":"advancements.tcc.quests.warrior.root.title","color":"dark_purple"},"\n",{"translate":"advancements.tcc.quests.warrior.root.description","color":"white"}]}}]}]}]
advancement grant @s only tcc:technical/toast/quests/warrior/6
scoreboard players reset @s tcc.dummy
