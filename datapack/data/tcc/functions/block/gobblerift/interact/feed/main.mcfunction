# Commands to run as gobblerift being fed

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.swallow block @a[distance=..16]
execute on target run advancement grant @s only tcc:minecraft/end/feed_gobblerift
execute unless data storage tcc:storage root.temp.item.tag.CustomModelData run function tcc:block/gobblerift/interact/feed/particles
execute if entity @s[scores={tcc.dummy2=64..99}] run function tcc:block/gobblerift/set_state/digesting
execute if entity @s[scores={tcc.dummy2=100..}] run function tcc:block/gobblerift/set_state/juice_ready