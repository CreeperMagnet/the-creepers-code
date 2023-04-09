############################################################
# Functions to update light levels for a custom block
############################################################

execute unless entity @s[scores={tcc.dummy=1..}] if predicate tcc:block/light/0 run scoreboard players set @s tcc.dummy 0
execute unless entity @s[scores={tcc.dummy=2..}] if predicate tcc:block/light/1 run scoreboard players set @s tcc.dummy 1
execute unless entity @s[scores={tcc.dummy=3..}] if predicate tcc:block/light/2 run scoreboard players set @s tcc.dummy 2
execute unless entity @s[scores={tcc.dummy=4..}] if predicate tcc:block/light/3 run scoreboard players set @s tcc.dummy 3
execute unless entity @s[scores={tcc.dummy=5..}] if predicate tcc:block/light/4 run scoreboard players set @s tcc.dummy 4
execute unless entity @s[scores={tcc.dummy=6..}] if predicate tcc:block/light/5 run scoreboard players set @s tcc.dummy 5
execute unless entity @s[scores={tcc.dummy=7..}] if predicate tcc:block/light/6 run scoreboard players set @s tcc.dummy 6
execute unless entity @s[scores={tcc.dummy=8..}] if predicate tcc:block/light/7 run scoreboard players set @s tcc.dummy 7
execute unless entity @s[scores={tcc.dummy=9..}] if predicate tcc:block/light/8 run scoreboard players set @s tcc.dummy 8
execute unless entity @s[scores={tcc.dummy=10..}] if predicate tcc:block/light/9 run scoreboard players set @s tcc.dummy 9
execute unless entity @s[scores={tcc.dummy=11..}] if predicate tcc:block/light/10 run scoreboard players set @s tcc.dummy 10
execute unless entity @s[scores={tcc.dummy=12..}] if predicate tcc:block/light/11 run scoreboard players set @s tcc.dummy 11
execute unless entity @s[scores={tcc.dummy=13..}] if predicate tcc:block/light/12 run scoreboard players set @s tcc.dummy 12
execute unless entity @s[scores={tcc.dummy=14..}] if predicate tcc:block/light/13 run scoreboard players set @s tcc.dummy 13
execute unless entity @s[scores={tcc.dummy=15..}] if predicate tcc:block/light/14 run scoreboard players set @s tcc.dummy 14
execute if predicate tcc:block/light/15 run scoreboard players set @s tcc.dummy 15