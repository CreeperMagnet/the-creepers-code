############################################################
# Calculates protection into the damage formula
############################################################

# Get all armor values and add them together
execute store result score #temp_0 tcc.dummy run data get entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #temp_1 tcc.dummy = #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run data get entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #temp_1 tcc.dummy += #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #temp_1 tcc.dummy += #temp_0 tcc.dummy
execute store result score #temp_0 tcc.dummy run data get entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
scoreboard players operation #temp_1 tcc.dummy += #temp_0 tcc.dummy

# Make the damage number based on that

  # Multiply by 100 to maintain precision
scoreboard players operation #temp_1 tcc.dummy *= #100 tcc.dummy
  # Divide by 25 per the formula
scoreboard players operation #temp_1 tcc.dummy /= #25 tcc.dummy

  # Then subtract it all from 1 (100)

scoreboard players set #temp_0 tcc.dummy 100
scoreboard players operation #temp_0 tcc.dummy -= #temp_1 tcc.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation #damage tcc.dummy *= #temp_0 tcc.dummy
scoreboard players operation #damage tcc.dummy /= #100 tcc.dummy
