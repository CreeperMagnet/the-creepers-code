############################################################
# Description: Makes a toast based on how many of the advancements you have
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/01=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/02=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/03=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/04=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/05=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/warrior/display/06=true}] tcc.dummy 1

advancement grant @s[scores={tcc.dummy=1}] only tcc:technical/toast/quests/warrior/1
advancement grant @s[scores={tcc.dummy=2}] only tcc:technical/toast/quests/warrior/2
advancement grant @s[scores={tcc.dummy=3}] only tcc:technical/toast/quests/warrior/3
advancement grant @s[scores={tcc.dummy=4}] only tcc:technical/toast/quests/warrior/4
advancement grant @s[scores={tcc.dummy=5}] only tcc:technical/toast/quests/warrior/5

scoreboard players reset @s tcc.dummy
