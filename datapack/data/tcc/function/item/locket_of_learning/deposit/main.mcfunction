# Stores experience into the locket

playsound tcc:item.locket_of_learning.deposit player @a[distance=..16]
advancement grant @s only tcc:minecraft/adventure/obtain_locket_of_learning

# Run loop for depositing using amount of stored points
scoreboard players set #temp_1 tcc.dummy 0
function tcc:item/locket_of_learning/deposit/loop

# Modifying item macro
function tcc:item/locket_of_learning/modify_item with storage tcc:temp root.item