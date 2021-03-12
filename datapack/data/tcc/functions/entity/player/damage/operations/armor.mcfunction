############################################################
# Description: Calculates armor into the damage formula
# Creator: ICY / CreeperMagnet_
############################################################

# tcc.damage tcc.dummy: damage to add to entity, to 1 decimal place (x10)


  ## https://static.wikia.nocookie.net/minecraft_gamepedia/images/0/0e/ArmorDamageFormula.svg/revision/latest/scale-to-width-down/668?cb=20190728042948
  ## FORMULA:
  ## damage = damage * (1 - (min(20,max(armor ÷ 5 , ATF))) ÷ 25)


 ## Insert Armor Toughness
  execute store result score tcc.temp_1 tcc.dummy run attribute @s minecraft:generic.armor_toughness get 10

  # Create value for first portion of max(armor ÷ 5, ATF)
  # This leads to armor ÷ 5 being stored in tcc.temp_2
scoreboard players operation tcc.temp_2 tcc.dummy = tcc.temp_0 tcc.dummy
scoreboard players operation tcc.temp_2 tcc.dummy /= tcc.const.5 tcc.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT

  # Create values for second portion of max(armor ÷ 5, ATF) (ATF)
  # This is the armor toughness formula calculation. It is nasty.
  # It is equal to: (armor - damage ÷ (2 + (toughness ÷ 4)))



  # Assign Temporary Values from the semi-permanent values.

  # Armor
scoreboard players operation tcc.temp_3 tcc.dummy = tcc.temp_0 tcc.dummy
  # Damage
scoreboard players operation tcc.temp_4 tcc.dummy = tcc.damage tcc.dummy
  # Armor Toughness
scoreboard players operation tcc.temp_5 tcc.dummy = tcc.temp_1 tcc.dummy


  # Divide by 4 (working inside -> out), so (toughness ÷ 4) first.
  # tcc.const.4 always has the value of 4.

scoreboard players operation tcc.temp_5 tcc.dummy /= tcc.const.4 tcc.dummy


  # Then we add 2 to that, again working inside -> out. (2 + (toughness ÷ 4))

scoreboard players add tcc.temp_5 tcc.dummy 20


  # Then, divide the damage by that value. (damage ÷ (2 + (toughness ÷ 4)))

scoreboard players operation tcc.temp_4 tcc.dummy /= tcc.temp_5 tcc.dummy
scoreboard players operation tcc.temp_4 tcc.dummy *= tcc.const.10 tcc.dummy

  # Then subtract that value from armor, and you have the final result of the armor toughness formula.

scoreboard players operation tcc.temp_3 tcc.dummy -= tcc.temp_4 tcc.dummy

 ##### SEPARATOR SO YOUR BRAIN DOESN'T MELT



 # The next portion of this massive garbage heap of a formula. The max(armor ÷ 5, ATF). We've already calculated both, so we can just put them in here, and take the greatest one.
 # tcc.temp_2 = armor ÷ 5
 # tcc.temp_3 = Armor Toughness Formula results

execute if score tcc.temp_3 tcc.dummy > tcc.temp_2 tcc.dummy run scoreboard players operation tcc.temp_2 tcc.dummy = tcc.temp_3 tcc.dummy


 # Then the next part, the min(20, max(whatever was in last step)). If >20, it equals 20.
 # tcc.temp_2 = The results from last step, carried over.

execute if score tcc.temp_2 tcc.dummy matches 200.. run scoreboard players set tcc.temp_2 tcc.dummy 200



 # The REALLY MESSY MATH

  # Multiply by 10 to maintain precision
scoreboard players operation tcc.temp_2 tcc.dummy *= tcc.const.10 tcc.dummy
  # Divide by 25 per the formula
scoreboard players operation tcc.temp_2 tcc.dummy /= tcc.const.25 tcc.dummy

  # Then subtract it all from 1 (100)

scoreboard players set tcc.temp_0 tcc.dummy 100
scoreboard players operation tcc.temp_0 tcc.dummy -= tcc.temp_2 tcc.dummy

  # Multiply the damage by the end result, then divide by 100 to get proper precision back.
scoreboard players operation tcc.damage tcc.dummy *= tcc.temp_0 tcc.dummy
scoreboard players operation tcc.damage tcc.dummy /= tcc.const.100 tcc.dummy
