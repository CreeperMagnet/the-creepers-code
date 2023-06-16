############################################################
# Commands to run off a snail nest every ten seconds
############################################################

scoreboard players add @s[predicate=tcc:chance/one_half] tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=90..}] align xyz positioned ~ ~-1 ~ run function tcc:block/snail_nest/hatch
