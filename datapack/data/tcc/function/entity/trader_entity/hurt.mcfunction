# Creates hurt color and noises

execute if score @s[tag=!tcc.silent] tcc.dummy matches 9 run function tcc:entity/trader_entity/sounds/hurt
item modify entity @s armor.head {"function":"set_damage","damage":0}
item modify entity @s weapon.mainhand {"function":"set_damage","damage":0}
