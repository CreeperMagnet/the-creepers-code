############################################################
# Verifies the item for gobblerift feeding
############################################################

scoreboard players set @s tcc.dummy 0
data remove storage tcc:storage root.temp.item.tag.RepairCost
data remove storage tcc:storage root.temp.item.tag.display
execute unless data storage tcc:storage root.temp.item.tag.tcc.gobblerift_meat store success score @s tcc.dummy if data storage tcc:storage root.temp.item.tag run data modify storage tcc:storage root.temp.item.tag set value {}
execute if data storage tcc:storage root.temp.item.tag.tcc.gobblerift_meat run scoreboard players set @s tcc.dummy 0
execute if entity @s[scores={tcc.dummy=0}] run data modify storage tcc:storage root.temp.meat set value 1b
execute unless entity @s[scores={tcc.dummy=0}] run data remove storage tcc:storage root.temp.item 
