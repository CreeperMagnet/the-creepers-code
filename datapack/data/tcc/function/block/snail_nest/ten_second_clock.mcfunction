# Commands to run off a snail nest every ten seconds

scoreboard players add @s[predicate=tcc:random_chance/0.5] tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=45..}] align xyz positioned ~0.5 ~-1 ~0.5 run function tcc:block/snail_nest/hatch
