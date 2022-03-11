############################################################
# Kills the player if their health is too low
############################################################

tag @s add tcc.dead
tag @s remove tcc.tag
tag @s[predicate=tcc:entity/holding/totem_of_undying] add tcc.tag
scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run gamerule showDeathMessages
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run gamerule showDeathMessages false
effect give @s[tag=tcc.tag] instant_damage 1 100 true
kill @s[tag=!tcc.tag]
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.boomerang] run tellraw @a {"translate":"death.attack.tcc.boomerang","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.iceologer_ice] run tellraw @a {"translate":"death.attack.tcc.iceologer_ice","with":[{"selector":"@s"},{"translate":"entity.tcc.iceologer"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.iceologer_freeze] run tellraw @a {"translate":"death.attack.tcc.iceologer_freeze","with":[{"selector":"@s"}]}

execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.swordfish,nbt={SelectedItem:{tag:{tcc:{id:"swordfish"}}}},nbt={SelectedItem:{tag:{display:{Name:'{"italic":false,"translate":"item.tcc.swordfish"}'}}}}] run tellraw @a {"translate":"death.attack.tcc.swordfish","with":[{"selector":"@s"},{"selector":"@s"},{"translate":"item.tcc.swordfish"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.swordfish,nbt=!{SelectedItem:{tag:{tcc:{id:"swordfish"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"swordfish"},display:{Name:'{"italic":false,"translate":"item.tcc.swordfish"}'}}}]}] run tellraw @a {"translate":"death.attack.tcc.swordfish","with":[{"selector":"@s"},{"selector":"@s"},{"translate":"item.tcc.swordfish"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.swordfish,nbt={SelectedItem:{tag:{tcc:{id:"swordfish"}}}},nbt=!{SelectedItem:{tag:{display:{Name:'{"italic":false,"translate":"item.tcc.swordfish"}'}}}}] run tellraw @a {"translate":"death.attack.tcc.swordfish","with":[{"selector":"@s"},{"selector":"@s"},{"translate":"chat.square_brackets","with":[{"nbt":"SelectedItem.tag.display.Name","entity":"@s","interpret":true,"italic":true}]}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.swordfish,nbt=!{SelectedItem:{tag:{tcc:{id:"swordfish"}}}},nbt={Inventory:[{Slot:-106b,tag:{tcc:{id:"swordfish"}}}]},nbt=!{Inventory:[{Slot:-106b,tag:{display:{Name:'{"italic":false,"translate":"item.tcc.swordfish"}'}}}]}] run tellraw @a {"translate":"death.attack.tcc.swordfish","with":[{"selector":"@s"},{"selector":"@s"},{"translate":"chat.square_brackets","with":[{"nbt":"Inventory[{Slot:-106b}].tag.display.Name","entity":"@s","interpret":true,"italic":true}]}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.geomancer_explosive] run tellraw @a {"translate":"death.attack.tcc.geomancer_explosive","with":[{"selector":"@s"},{"translate":"entity.tcc.geomancer"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.channeling_lightning] run tellraw @a {"translate":"death.attack.tcc.channeling_lightning","with":[{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1},tag=tcc.damage.diluted_harming_potion] run tellraw @a {"translate":"death.attack.indirectMagic","with":[{"selector":"@s"},{"selector":"@s"}]}
execute if entity @s[tag=!tcc.tag,scores={tcc.dummy=1}] run gamerule showDeathMessages true
tag @s remove tcc.tag
