############################################################
# Description: Completes a quest advancement and makes a toast appear if said quest is started
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/quest_book/healer/trigger/02
execute if entity @s[tag=tcc.quest.healer,advancements={tcc:technical/item/quest_book/healer/display/02=false}] run function tcc:item/quest_book/healer/toast
advancement grant @s[tag=tcc.quest.healer] only tcc:technical/item/quest_book/healer/display/02
execute if entity @s[advancements={tcc:technical/item/quest_book/healer/display/01=true,tcc:technical/item/quest_book/healer/display/02=true,tcc:technical/item/quest_book/healer/display/03=true}] run function tcc:item/quest_book/healer/finish
