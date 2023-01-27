############################################################
# Throws the boomerang from a player's hand
############################################################

execute if entity @s[gamemode=!creative] run function tcc:item/durability/damage_generic_amount/mainhand_1
execute at @s run playsound tcc:item.boomerang.throw player @a[distance=..16]
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.boomerang.UUID set from entity @s UUID
data modify storage tcc:storage root.temp.boomerang.item set from entity @s SelectedItem
data modify storage tcc:storage root.temp.boomerang.slot set from entity @s SelectedItemSlot
data modify storage tcc:storage root.temp.boomerang.gamemode set from entity @s playerGameType
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.mainhand with air
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330001}}],DisabledSlots:2096896,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["tcc.tick","tcc.boomerang","tcc.boomerang.start","smithed.entity","smithed.block"]}
execute as @e[type=armor_stand,tag=tcc.boomerang.start,limit=1] run function tcc:item/boomerang/initiate
scoreboard players set @s tcc.boomerang_cooldown 10