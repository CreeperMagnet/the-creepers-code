############################################################
# Description: Makes a toast based on how many of the advancements you have
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/healer/display/01=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/healer/display/02=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/healer/display/03=true}] tcc.dummy 1

advancement grant @s[scores={tcc.dummy=1}] only tcc:technical/toast/quests/healer/1
advancement grant @s[scores={tcc.dummy=2}] only tcc:technical/toast/quests/healer/2

scoreboard players reset @s tcc.dummy
