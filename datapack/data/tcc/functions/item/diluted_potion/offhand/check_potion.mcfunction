############################################################
# Mainhand for diluted potions
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
function tcc:item/diluted_potion/check_potion
execute if entity @s[scores={tcc.dummy=1..},gamemode=!creative] run function tcc:item/diluted_potion/offhand/modify_durability
execute if entity @s[scores={tcc.dummy=1..}] run playsound entity.generic.drink player @a[distance=..16] ~ ~ ~ 1 1.3