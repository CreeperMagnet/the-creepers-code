############################################################
# Fills a teapot, setting tags and visuals
############################################################

data modify entity @s HandItems[0].tag.tcc.tea.extended set value 1b
tag @s remove tcc.teapot.can_extend
playsound tcc:block.teapot.insert_item block @a[distance=..16]
scoreboard players set @s tcc.dummy2 20