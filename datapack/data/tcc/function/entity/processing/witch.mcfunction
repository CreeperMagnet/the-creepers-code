# Modifies witches

execute if predicate tcc:location_check/below_0 run return run function tcc:entity/geomancer/spawn
data modify entity @s[nbt={CustomName:'{"translate":"entity.tcc.archaeologist"}'}] CustomName set value '""'