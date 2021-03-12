# tcc.damage tcc.dummy: damage to add to entity, to 1 decimal place, negative if ignores armor
# tcc.ignore_armor tcc.dummy: 1 if ignores armor, 0 if doesn't

 ## Insert Armor Values (Not part of formula)
  execute store result score tcc.temp_0 tcc.dummy run attribute @s minecraft:generic.armor get 10
  execute store result score tcc.temp_1 tcc.dummy run attribute @s minecraft:generic.armor_toughness get 10

execute unless score tcc.temp_0 tcc.dummy matches 0 unless score tcc.ignore_armor tcc.dummy matches 1 run function tcc:entity/player/damage/operations/armor
execute unless score tcc.temp_0 tcc.dummy matches 0 unless score tcc.ignore_armor tcc.dummy matches 1 run function tcc:entity/player/damage/operations/protection
execute if data entity @s ActiveEffects[{Id:11b}] run function tcc:entity/player/damage/operations/resistance
function tcc:entity/player/damage/calculate_attributes
function tcc:entity/player/damage/apply_damage

tag @s remove tcc.damage.boomerang
tag @s remove tcc.damage.iceologer_ice
tag @s remove tcc.damage.iceologer_freeze
tag @s remove tcc.damage.swordfish
tag @s remove tcc.damage.geomancer_explosive
tag @s remove tcc.damage.channeling_lightning
