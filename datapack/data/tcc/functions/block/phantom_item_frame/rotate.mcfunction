############################################################
# Edits a phantom item frame to display the base
############################################################

scoreboard players reset @s tcc.dummy

execute store result score @s tcc.dummy run data get entity @s ItemRotation

execute unless score @s tcc.dummy = @s tcc.dummy2 run playsound tcc:entity.phantom_item_frame.rotate_item block @a[distance=..16]

execute store result score @s tcc.dummy2 run data get entity @s ItemRotation