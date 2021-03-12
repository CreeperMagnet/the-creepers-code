############################################################
# Description: Makes the peculiar berries work
# Creator: CreeperMagnet_
############################################################

advancement grant @s only tcc:minecraft/husbandry/peculiar_berries
replaceitem entity @s[gamemode=!creative,nbt={Inventory:[{tag:{tcc:{id:"peculiar_berries"}},Slot:-106b}]},nbt=!{SelectedItem:{tag:{tcc:{id:"peculiar_berries"}}}}] weapon.offhand air
replaceitem entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"peculiar_berries"}}}}] weapon.mainhand air
data merge entity @e[tag=!global.ignore,type=chicken,tag=!tcc.peculiar_chicken,dx=0,dy=0,dz=0,limit=1,nbt={Age:0}] {DeathLootTable:"tcc:entities/peculiar_chicken",Tags:["tcc.peculiar_chicken"]}
execute as @e[type=chicken,tag=tcc.peculiar_chicken,dx=0,dy=0,dz=0,limit=1] at @s run function tcc:item/peculiar_berries/effects
