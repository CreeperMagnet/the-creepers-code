############################################################
# Description: Revokes all technical advancements that the player shouldn't have access to
# Creator: CreeperMagnet_
############################################################

title @s[tag=!global.ignore.gui,advancements={tcc:technical/root=true}] title {"translate":"commands.tcc.scold_naughty_player","color":"red"}
advancement revoke @s through tcc:technical/root
advancement revoke @s through tcc:technical/item/quest_book/healer/display/root
advancement revoke @s through tcc:technical/item/quest_book/mage/display/root
advancement revoke @s through tcc:technical/item/quest_book/rogue/display/root
advancement revoke @s through tcc:technical/item/quest_book/warrior/display/root
