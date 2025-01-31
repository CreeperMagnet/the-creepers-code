# Breaks the gobblerift

execute on passengers if entity @s[tag=tcc.gobblerift.seedling] run loot spawn ~ ~ ~ loot tcc:items/gobblerift_seeds
execute on passengers if entity @s[tag=!tcc.gobblerift.seedling] on vehicle run function tcc:block/gobblerift/break/non_seedling
data remove storage tcc:temp root
data modify storage tcc:temp root.macro_input.item set from entity @s item
execute on passengers if entity @s[tag=tcc.gobblerift.tall] run data merge storage tcc:temp {root:{macro_input:{dx:0.2,dy:0.7,dz:0.2,speed:0.07,count:40}}}
execute on passengers if entity @s[tag=tcc.gobblerift.tall] positioned ~ ~0.5 ~ run function tcc:block/break_particles/macro with storage tcc:temp root.macro_input
execute on passengers if entity @s[tag=!tcc.gobblerift.tall] run data merge storage tcc:temp {root:{macro_input:{dx:0.2,dy:0.2,dz:0.2,speed:0.07,count:20}}}
execute on passengers if entity @s[tag=!tcc.gobblerift.tall] positioned ~ ~-0.5 ~ run function tcc:block/break_particles/macro with storage tcc:temp root.macro_input
execute on passengers run kill @s
kill @s
playsound tcc:block.gobblerift.break block @a[distance=..16]
