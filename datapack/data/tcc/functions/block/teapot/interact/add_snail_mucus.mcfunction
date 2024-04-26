# Fills a teapot, setting tags and visuals

execute on vehicle run data modify entity @s item.components."minecraft:custom_data".tea.extended set value 1b
tag @s remove tcc.teapot.can_extend
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count
playsound tcc:block.teapot.insert_item block @a[distance=..16]
scoreboard players set @s tcc.dummy2 20