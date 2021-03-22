############################################################
# Description: Functions for the quest book item
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=!tcc.quest.mage,nbt={SelectedItem:{tag:{tcc:{quest:"mage"}}}}] run function tcc:item/quest_book/mage/start
execute if entity @s[tag=!tcc.quest.rogue,nbt={SelectedItem:{tag:{tcc:{quest:"rogue"}}}}] run function tcc:item/quest_book/rogue/start
execute if entity @s[tag=!tcc.quest.warrior,nbt={SelectedItem:{tag:{tcc:{quest:"warrior"}}}}] run function tcc:item/quest_book/warrior/start
execute if entity @s[tag=!tcc.quest.healer,nbt={SelectedItem:{tag:{tcc:{quest:"healer"}}}}] run function tcc:item/quest_book/healer/start
execute if entity @s[tag=!tcc.quest.mage,nbt={Inventory:[{Slot:-106b,tag:{tcc:{quest:"mage"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] run function tcc:item/quest_book/mage/start
execute if entity @s[tag=!tcc.quest.rogue,nbt={Inventory:[{Slot:-106b,tag:{tcc:{quest:"rogue"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] run function tcc:item/quest_book/rogue/start
execute if entity @s[tag=!tcc.quest.warrior,nbt={Inventory:[{Slot:-106b,tag:{tcc:{quest:"warrior"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] run function tcc:item/quest_book/warrior/start
execute if entity @s[tag=!tcc.quest.healer,nbt={Inventory:[{Slot:-106b,tag:{tcc:{quest:"healer"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] run function tcc:item/quest_book/healer/start

item entity @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"quest_book"}}}]},nbt=!{SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] weapon.offhand replace air
item entity @s[nbt={SelectedItem:{tag:{tcc:{id:"quest_book"}}}}] weapon.mainhand replace air
playsound tcc:item.quest_book.use player @a[distance=..16]
