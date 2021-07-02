############################################################
# Description: Makes the peculiar berries work
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.tag
advancement grant @s only tcc:minecraft/husbandry/peculiar_berries
item replace entity @s[gamemode=!creative,nbt={Inventory:[{tag:{tcc:{id:"peculiar_berries"}},Slot:-106b}]},nbt=!{SelectedItem:{tag:{tcc:{id:"peculiar_berries"}}}}] weapon.offhand with air
item replace entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{tcc:{id:"peculiar_berries"}}}}] weapon.mainhand with air
execute as @e[type=minecraft:chicken,tag=!global.ignore,tag=!tcc.peculiar_chicken,dx=0,dy=0,dz=0,limit=1,nbt={Age:0}] at @s run function tcc:item/peculiar_berries/effects
