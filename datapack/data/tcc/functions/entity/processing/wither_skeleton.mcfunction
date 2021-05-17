############################################################
# Description: Modifies wither skeletons
# Creator: CreeperMagnet_
############################################################

execute if predicate tcc:chance/five_hundredths run item replace entity @s weapon.mainhand with stone_sword{CustomModelData:330000,tcc:{potion:{durability:[60,60],id:"minecraft:wither",custom_hideflags:0,custom_name:0,custom_attributes:0}},display:{Name:'{"translate":"item.tcc.tipped_sword.stone.effect.wither","italic":false}',Lore:['{"translate":"item.tcc.tipped_sword.stone.effect.wither.lore","color":"dark_gray"}','{"translate":"potion.withDuration","color":"red","italic":false,"with":[{"translate":"effect.minecraft.wither"},{"translate":"potion.tcc.duration","with":[0,0,4]}]}','{"color":"gray","translate":"item.tcc.potion_items.durability","italic":false,"with":[60,60]}']}}
