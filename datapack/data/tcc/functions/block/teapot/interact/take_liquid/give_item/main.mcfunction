############################################################
# Commands to run as players who took from a teapot
############################################################

item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count/1
execute if data entity @s SelectedItem run function tcc:block/teapot/interact/take_liquid/give_item/give
execute unless data entity @s SelectedItem run function tcc:block/teapot/interact/take_liquid/give_item/replace
playsound minecraft:item.bottle.fill player @a[distance=..16]