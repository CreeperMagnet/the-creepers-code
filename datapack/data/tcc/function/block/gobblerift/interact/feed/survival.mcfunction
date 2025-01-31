# Commands to run as gobblerift being fed (by a survival mode player)

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.value set from storage tcc:temp root.meat_value
function tcc:block/gobblerift/interact/feed/set_score_macro with storage tcc:temp root.macro_input

function tcc:block/gobblerift/interact/feed/main
execute on target if items entity @s weapon.mainhand minecraft:rabbit_stew run return run item replace entity @s weapon.mainhand with bowl
execute on target run item modify entity @s weapon.mainhand tcc:reduce_count