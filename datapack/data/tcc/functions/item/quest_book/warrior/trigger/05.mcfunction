############################################################
# Description: Completes a quest advancement and makes a toast appear if said quest is started
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/quest_book/warrior/trigger/05
execute if entity @s[tag=tcc.quest.warrior,advancements={tcc:technical/item/quest_book/warrior/display/05=false}] run function tcc:item/quest_book/warrior/toast
advancement grant @s[tag=tcc.quest.warrior] only tcc:technical/item/quest_book/warrior/display/05
execute if entity @s[advancements={tcc:technical/item/quest_book/warrior/display/01=true,tcc:technical/item/quest_book/warrior/display/02=true,tcc:technical/item/quest_book/warrior/display/03=true,tcc:technical/item/quest_book/warrior/display/04=true,tcc:technical/item/quest_book/warrior/display/05=true,tcc:technical/item/quest_book/warrior/display/06=true}] run function tcc:item/quest_book/warrior/finish
