# Take juice from gobblerift

execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.fill_bottle block @a[distance=..16]
data remove storage tcc:temp root.name
execute on vehicle if data entity @s[nbt=!{CustomName:{"translate":"block.tcc.gobblerift","italic":false,"color":"yellow"}}] CustomName run data modify storage tcc:temp root.name set from entity @s CustomName
execute on vehicle run data modify storage tcc:temp root.id set from entity @s item.components."minecraft:custom_data".id
execute on target at @s run function tcc:block/gobblerift/interact/juice/as_player