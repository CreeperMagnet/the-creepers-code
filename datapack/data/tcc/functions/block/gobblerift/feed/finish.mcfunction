############################################################
# Description: Feeds a gobblerift, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:porkchop"}}] run particle minecraft:item minecraft:porkchop ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_porkchop"}}] run particle minecraft:item minecraft:cooked_porkchop ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cod"}}] run particle minecraft:item minecraft:cod ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:salmon"}}] run particle minecraft:item minecraft:salmon ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:tropical_fish"}}] run particle minecraft:item minecraft:tropical_fish ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] run particle minecraft:item minecraft:cooked_cod ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] run particle minecraft:item minecraft:cooked_salmon ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:beef"}}] run particle minecraft:item minecraft:beef ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_beef"}}] run particle minecraft:item minecraft:cooked_beef ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:chicken"}}] run particle minecraft:item minecraft:chicken ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_chicken"}}] run particle minecraft:item minecraft:cooked_chicken ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:rabbit"}}] run particle minecraft:item minecraft:rabbit ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_rabbit"}}] run particle minecraft:item minecraft:cooked_rabbit ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:mutton"}}] run particle minecraft:item minecraft:mutton ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal
execute if entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{}}},nbt={SelectedItem:{id:"minecraft:cooked_mutton"}}] run particle minecraft:item minecraft:cooked_mutton ~ ~1.35 ~ 0.1 0.1 0.1 0.05 2 normal

scoreboard players add @s[predicate=!tcc:chance/one_tenth] tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=32..}] run function tcc:block/gobblerift/feed/set_juicing
playsound tcc:block.gobblerift.swallow block @a[distance=..16]
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0