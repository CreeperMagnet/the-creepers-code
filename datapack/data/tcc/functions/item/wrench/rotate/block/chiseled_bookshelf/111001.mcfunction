execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chiseled_bookshelf[facing=north] run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=east]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chiseled_bookshelf[facing=south] run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=west]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chiseled_bookshelf[facing=east] run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=south]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ chiseled_bookshelf[facing=west] run setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=north]
