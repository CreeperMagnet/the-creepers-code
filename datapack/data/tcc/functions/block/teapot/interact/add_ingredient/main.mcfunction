# Fills a teapot, setting tags and visuals

execute on vehicle run function tcc:block/teapot/interact/add_ingredient/as_vehicle
execute on target if entity @s[gamemode=!creative] run function tcc:block/teapot/interact/add_ingredient/as_player
playsound tcc:block.teapot.insert_item block @a[distance=..16]
tag @s remove tcc.teapot.warped_wart
tag @s add tcc.teapot.can_extend
scoreboard players set @s tcc.dummy2 20