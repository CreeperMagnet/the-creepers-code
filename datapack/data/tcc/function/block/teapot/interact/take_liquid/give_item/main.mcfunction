# Commands to run as players who took from a teapot

item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count
execute unless data storage tcc:temp root.macro_input{extended:1b} run data modify storage tcc:temp root.macro_input.path set value ""
execute if data storage tcc:temp root.macro_input{extended:1b} run data modify storage tcc:temp root.macro_input.path set value "extended/"
data remove storage tcc:temp root.macro_input.extended
data remove storage tcc:temp root.macro_input.color
execute if data entity @s[predicate=!tcc:entity_properties/full_inventory] SelectedItem run data modify storage tcc:temp root.macro_input.action set value "give @s"
execute if data entity @s[predicate=tcc:entity_properties/full_inventory] SelectedItem run data modify storage tcc:temp root.macro_input.action set value "spawn ~ ~ ~"
execute unless data entity @s SelectedItem run data modify storage tcc:temp root.macro_input.action set value "replace entity @s weapon.mainhand"
function tcc:block/teapot/interact/take_liquid/give_item/loot_macro with storage tcc:temp root.macro_input
playsound minecraft:item.bottle.fill player @a[distance=..16]