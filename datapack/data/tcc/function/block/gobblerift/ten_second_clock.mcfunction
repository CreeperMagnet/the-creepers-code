# Commands to run every ten seconds for gobblerift item display

data modify entity @s item.components."minecraft:custom_data".break_state set value 0

# Stuff to run on the interaction entity riding this entity
execute on passengers if entity @s[tag=tcc.gobblerift.bonemealable] run function tcc:block/gobblerift/grow/main
execute on passengers if entity @s[tag=tcc.gobblerift.digesting] run function tcc:block/gobblerift/grow/digest
