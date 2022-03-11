############################################################
# Ticks down the tea timer for when it's done processing
############################################################

data modify entity @s HandItems[0].tag.display.color set from entity @s HandItems[0].tag.tcc.tea.color
playsound tcc:block.teapot.brew block @a[distance=..16]