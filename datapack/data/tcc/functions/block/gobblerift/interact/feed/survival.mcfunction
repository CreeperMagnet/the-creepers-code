############################################################
# Commands to run as gobblerift being fed (by a survival mode player)
############################################################

scoreboard players add @s[predicate=!tcc:chance/one_tenth] tcc.dummy2 1
execute on target run item modify entity @s weapon.mainhand tcc:reduce_count/1
function tcc:block/gobblerift/interact/feed/main