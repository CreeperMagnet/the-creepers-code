############################################################
# Removes state tags that are mutually exclusive and resets tcc.dummy2
############################################################

scoreboard players set @s tcc.dummy2 0
tag @s remove tcc.gobblerift.bonemealable
tag @s remove tcc.gobblerift.hungry
tag @s remove tcc.gobblerift.digesting
tag @s remove tcc.gobblerift.juice_ready
