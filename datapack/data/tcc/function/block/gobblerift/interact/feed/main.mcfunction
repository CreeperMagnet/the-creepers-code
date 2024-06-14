# Commands to run as gobblerift being fed

execute on target run advancement grant @s only tcc:minecraft/end/feed_gobblerift

execute if entity @s[scores={tcc.dummy2=64..99}] run function tcc:block/gobblerift/set_state/digesting
execute if entity @s[scores={tcc.dummy2=100..}] run function tcc:block/gobblerift/set_state/juice_ready

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.swallow block @a[distance=..16]

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.item set from storage tcc:temp root.item
function tcc:block/gobblerift/interact/feed/particle_macro with storage tcc:temp root.macro_input