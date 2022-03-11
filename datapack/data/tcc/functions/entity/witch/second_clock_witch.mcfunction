############################################################
# Functions to run off witches every second
############################################################

scoreboard players remove @s[scores={tcc.dummy2=1..}] tcc.dummy2 1
execute unless entity @s[scores={tcc.dummy2=1..}] unless data entity @s RaidId if entity @a[predicate=tcc:entity/wearing/witch_hat,distance=..10,gamemode=!spectator] unless entity @a[predicate=!tcc:entity/wearing/witch_hat,distance=..10,gamemode=!creative,gamemode=!spectator] run function tcc:entity/witch/switch_to_trader/main
