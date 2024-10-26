# Breaks the gobblerift

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.id set from entity @s item.components."minecraft:custom_data".id
function tcc:block/gobblerift/array_management/remove with storage tcc:temp root.macro_input
execute if data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/gobblerift/named
execute unless data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/gobblerift/unnamed
execute on passengers if entity @s[tag=tcc.gobblerift.tall] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:gobblerift"}}} ~ ~1.2 ~ 0.2 0.7 0.2 0.05 40 normal
execute on passengers if entity @s[tag=!tcc.gobblerift.tall] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:gobblerift"}}} ~ ~0.2 ~ 0.2 0.2 0.2 0.05 20 normal
execute on passengers run kill @s
kill @s
playsound tcc:block.gobblerift.break block @a[distance=..16]
