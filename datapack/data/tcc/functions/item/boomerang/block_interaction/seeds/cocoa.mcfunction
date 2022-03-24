execute if block ~ ~ ~ cocoa[facing=north] run setblock ~ ~ ~ cocoa[facing=north]
execute if block ~ ~ ~ cocoa[facing=south] run setblock ~ ~ ~ cocoa[facing=south]
execute if block ~ ~ ~ cocoa[facing=east] run setblock ~ ~ ~ cocoa[facing=east]
execute if block ~ ~ ~ cocoa[facing=west] run setblock ~ ~ ~ cocoa[facing=west]
particle block cocoa[age=2] ~ ~1 ~ 0.1 0.1 0.1 0 15
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.85
loot spawn ~ ~ ~ loot tcc:blocks/boomerang/cocoa