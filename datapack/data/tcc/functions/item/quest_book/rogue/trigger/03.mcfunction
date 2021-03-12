############################################################
# Description: Completes a quest advancement and makes a toast appear if said quest is started
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/quest_book/rogue/trigger/03
execute if entity @s[tag=tcc.quest.rogue,advancements={tcc:technical/item/quest_book/rogue/display/03=false}] run function tcc:item/quest_book/rogue/toast
advancement grant @s[tag=tcc.quest.rogue] only tcc:technical/item/quest_book/rogue/display/03
execute if entity @s[advancements={tcc:technical/item/quest_book/rogue/display/01=true,tcc:technical/item/quest_book/rogue/display/02=true,tcc:technical/item/quest_book/rogue/display/03=true,tcc:technical/item/quest_book/rogue/display/04=true}] run function tcc:item/quest_book/rogue/finish
