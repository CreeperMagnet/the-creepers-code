# Ticks down the tea timer for when it's done processing

execute on vehicle run data modify entity @s item.components."minecraft:dyed_color".rgb set from entity @s item.components."minecraft:custom_data".tea.color
playsound tcc:block.teapot.brew block @a[distance=..16]