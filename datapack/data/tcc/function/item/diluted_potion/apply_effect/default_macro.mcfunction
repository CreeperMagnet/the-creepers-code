# Applies a potion effect if the conditions are right

scoreboard players set #temp_0 tcc.dummy -1
$execute if entity @s[nbt={active_effects:[{id:"$(effect)"}]}] store result score #temp_0 tcc.dummy run data get entity @s active_effects[{id:"$(effect)"}].amplifier
$execute if score #temp_0 tcc.dummy matches $(amplifier).. run return 0
$effect give @s $(effect) $(duration) $(amplifier)
scoreboard players set @s tcc.dummy 1