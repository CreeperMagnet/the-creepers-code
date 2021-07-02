############################################################
# Description: Closes your elytra when shifting
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.useelytra
scoreboard players reset @s tcc.sneaktime
item modify entity @s armor.chest tcc:elytra_close
tag @s add tcc.schedule.elytra_close
data modify storage abcl:storage temp.message set value {Message: '{"translate":"item.tcc.elytra.reopen_warning","with":[{"keybind":"key.jump"}]}', Priority: 1}
execute as @s[tag=!global.ignore.gui] run function abcl:message/check
schedule function tcc:item/elytra_close/scheduled 2t
playsound tcc:item.elytra.close player @a[distance=..16]
