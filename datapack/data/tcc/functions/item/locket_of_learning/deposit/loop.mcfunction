# Recursively deposits xp into the locket

# Increment the number of points extracted, the current number of points in the locket, and take xp
scoreboard players add #temp_0 tcc.dummy 1
scoreboard players add #temp_1 tcc.dummy 1
xp add @s -1 points

# Stop if you've filled up the locket (current level = max)
execute if score #temp_0 tcc.dummy matches 1395 run return 0

# Query XP points
execute store result score @s tcc.dummy run xp query @s points

# Remove the last tiny dreg of xp left so the bar doesn't have anything remaining
execute if entity @s[nbt={XpLevel:0},nbt=!{XpP:0.0f},scores={tcc.dummy=0}] run xp add @s -1 points

# Only continue if the player still has xp and extraction amount is < 31
execute unless entity @s[nbt={XpLevel:0},scores={tcc.dummy=0}] if score #temp_1 tcc.dummy matches ..30 run function tcc:item/locket_of_learning/deposit/loop