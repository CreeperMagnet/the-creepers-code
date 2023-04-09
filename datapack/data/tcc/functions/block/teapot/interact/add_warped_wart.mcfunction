############################################################
# Fills a teapot, setting tags and visuals
############################################################

execute on vehicle run data modify entity @s item.tag.tea set value {id:"amenable",color:3126434,extended:0b}
tag @s remove tcc.teapot.water
tag @s add tcc.teapot.warped_wart
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count/1
scoreboard players set @s tcc.dummy2 20
playsound tcc:block.teapot.insert_item block @a[distance=..16]