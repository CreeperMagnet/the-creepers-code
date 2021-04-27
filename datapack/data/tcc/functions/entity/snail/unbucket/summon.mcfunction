############################################################
# Description: Summons a snail
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.tag
execute positioned ~ -50 ~ run function tcc:commands/summon/snail
execute as @e[type=wandering_trader,limit=1,sort=nearest,tag=tcc.snail.start] run function tcc:entity/snail/unbucket/initiate
item entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"snail_in_a_bucket"}}}}] weapon.mainhand replace minecraft:bucket
playsound minecraft:item.bucket.empty_fish neutral @a[distance=..16]
tag @s remove tcc.tag
