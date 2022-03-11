############################################################
# Fills a teapot, setting tags and visuals
############################################################

data modify entity @s HandItems[0].tag.tcc.tea set value {id:"amenable",color:3126434,extended:0b}
tag @s remove tcc.teapot.water
tag @s add tcc.teapot.warped_wart
scoreboard players set @s tcc.dummy2 20
playsound tcc:block.teapot.insert_item block @a[distance=..16]