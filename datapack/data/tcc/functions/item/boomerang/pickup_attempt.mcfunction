############################################################
# Description: Commands for possibly picking up a boomerang
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get entity @s ArmorItems[0].tag.tcc.UUID[0]
execute as @a[distance=..2,gamemode=!spectator] store result score @s tcc.dummy run data get entity @s UUID[0]
scoreboard players operation @a[distance=..2,gamemode=!spectator] tcc.dummy -= tcc.temp_0 tcc.dummy
execute if entity @s[tag=!tcc.boomerang.dead,scores={tcc.dummy2=6..}] as @a[scores={tcc.dummy=0},distance=..2,gamemode=!spectator,gamemode=!creative] at @s run summon item ~ ~ ~ {PickupDelay:3s,Item:{id:"carrot_on_a_stick",Count:1b},Tags:["tcc.replace_item","global.ignore"]}
execute if entity @s[tag=!tcc.boomerang.dead,scores={tcc.dummy2=6..}] if entity @a[scores={tcc.dummy=0},distance=..2,gamemode=!spectator] run data modify entity @e[type=item,limit=1,sort=nearest,distance=..3,tag=tcc.replace_item] Item.tag set from entity @s ArmorItems[3].tag
execute if entity @s[tag=!tcc.boomerang.dead,scores={tcc.dummy2=6..}] if entity @a[scores={tcc.dummy=0},distance=..2,gamemode=!spectator] run tag @e[type=item,limit=1,sort=nearest,distance=..3,tag=tcc.replace_item] remove tcc.replace_item
execute if entity @s[tag=!tcc.boomerang.dead,scores={tcc.dummy2=6..}] if entity @a[scores={tcc.dummy=0},distance=..2,gamemode=!spectator] run kill @s
execute if entity @s[tag=!tcc.boomerang.dead,scores={tcc.dummy2=6..}] if entity @a[scores={tcc.dummy=0},distance=..2,gamemode=!spectator] run tag @s add tcc.boomerang.dead
execute if entity @s[nbt=!{ArmorItems:[{tag:{tcc:{id:"spectral_boomerang"}}}]}] as @e[type=player,gamemode=!creative,gamemode=!spectator,distance=..2,scores={tcc.invul_timer=0}] unless entity @s[scores={tcc.dummy=0}] run function tcc:item/boomerang/hurt/player_damage
execute if entity @s[nbt={ArmorItems:[{tag:{tcc:{id:"spectral_boomerang"}}}]}] as @a[distance=..2] unless entity @s[scores={tcc.dummy=0}] run effect give @s glowing 10 0 false
scoreboard players reset @a[distance=..2] tcc.dummy
