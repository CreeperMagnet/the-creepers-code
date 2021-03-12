############################################################
# Description: Completes a quest advancement and makes a toast appear if said quest is started
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/quest_book/mage/trigger/01
execute if entity @s[tag=tcc.quest.mage,advancements={tcc:technical/item/quest_book/mage/display/01=false}] run function tcc:item/quest_book/mage/toast
advancement grant @s[tag=tcc.quest.mage] only tcc:technical/item/quest_book/mage/display/01
execute if entity @s[advancements={tcc:technical/item/quest_book/mage/display/01=true,tcc:technical/item/quest_book/mage/display/02=true,tcc:technical/item/quest_book/mage/display/03=true}] run function tcc:item/quest_book/mage/finish
