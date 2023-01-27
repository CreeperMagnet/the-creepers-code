############################################################
# Commands for the boomerang hitting a block and bouncing
############################################################

execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players set #temp_0 tcc.dummy 100
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players operation #temp_0 tcc.dummy -= @s tcc.dummy2
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players operation @s tcc.dummy2 = #temp_0 tcc.dummy
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players reset #temp_0 tcc.dummy
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players set @s tcc.dummy -1
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore run tp @s ^ ^ ^ facing ^ ^ ^-1
execute rotated ~ 0 unless block ^ ^ ^0.05 #tcc:boomerang/ignore at @s run playsound tcc:item.boomerang.bounce player @a[distance=..32] ~ ~ ~ 2 1
execute rotated ~ 0 if block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players set #temp_0 tcc.dummy 50
execute rotated ~ 0 if block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players operation #temp_0 tcc.dummy -= @s tcc.dummy2
execute rotated ~ 0 if block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players operation #temp_0 tcc.dummy /= #2 tcc.dummy
execute rotated ~ 0 if block ^ ^ ^0.05 #tcc:boomerang/ignore run scoreboard players operation @s tcc.dummy2 += #temp_0 tcc.dummy
execute rotated ~ 0 if block ^ ^ ^0.05 #tcc:boomerang/ignore run tp @s ^ ^ ^ ~ ~
