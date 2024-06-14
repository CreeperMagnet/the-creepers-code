# Commands for the boomerang hitting a solid interactable block and bouncing due to gamerule

execute if score @s tcc.dummy2 matches 50.. run return run function tcc:item/boomerang/pop_into_item with storage tcc:temp root.boomerang.macro_input
execute rotated ~ 0 run scoreboard players set #temp_0 tcc.dummy 100
execute rotated ~ 0 run scoreboard players operation #temp_0 tcc.dummy -= @s tcc.dummy2
execute rotated ~ 0 run scoreboard players operation @s tcc.dummy2 = #temp_0 tcc.dummy
execute rotated ~ 0 run scoreboard players reset #temp_0 tcc.dummy
execute rotated ~ 0 run scoreboard players set @s tcc.dummy -1
execute rotated ~ 0 run tp @s ^ ^ ^ facing ^ ^ ^-1
execute rotated ~ 0 at @s run playsound tcc:item.boomerang.bounce player @a[distance=..32] ~ ~ ~ 2 1