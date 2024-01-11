# Ticks down the tea timer for when it's done processing

execute on vehicle run data modify entity @s item.tag.display.color set from entity @s item.tag.tea.color
playsound tcc:block.teapot.brew block @a[distance=..16]