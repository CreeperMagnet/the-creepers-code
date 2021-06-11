############################################################
# Description: Feeds a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:porkchop"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:porkchop ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_porkchop"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_porkchop ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cod"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cod ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:salmon"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:salmon ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:tropical_fish"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:tropical_fish ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_cod ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_salmon ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:beef"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:beef ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_beef"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_beef ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:chicken"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:chicken ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_chicken"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_chicken ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:rabbit"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:rabbit ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_rabbit"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_rabbit ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:mutton"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:mutton ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute as @p[tag=tcc.tag,nbt={SelectedItem:{id:"minecraft:cooked_mutton"}}] unless data entity @s SelectedItem.tag.CustomModelData run particle minecraft:item minecraft:cooked_mutton ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal

scoreboard players add @s[predicate=!tcc:chance/one_tenth] tcc.dummy2 1
execute unless entity @p[gamemode=creative] if entity @s[scores={tcc.dummy2=32..}] run function tcc:block/gobblerift/feed/set_juicing
execute if entity @p[gamemode=creative] if entity @s[scores={tcc.dummy2=32..}] run function tcc:block/gobblerift/feed/finish_creative
execute if entity @s[tag=!tcc.silent] run playsound tcc:block.gobblerift.swallow block @a[distance=..16]
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0
