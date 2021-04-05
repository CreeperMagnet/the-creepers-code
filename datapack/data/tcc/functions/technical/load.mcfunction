############################################################
# Description: Adds all scoreboards and sets up everything
# Creator: CreeperMagnet_
############################################################

scoreboard objectives add tcc.dummy dummy
execute as @a unless entity @s[name=!CreeperMagnet_,name=!CreeperRepellant,name=!dragoncommands,name=!ChromaKey81,name=!Ragnorakkr_,name=!Ellivers] run tellraw @s [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.tcc.reload.success","color":"white","bold":false}]
execute if score tcc.server_version tcc.dummy matches ..39 run tellraw @a {"translate":"commands.tcc.initiate.incompatible","color":"dark_red","bold":true}
execute unless score tcc.server_version tcc.dummy matches 50 run function tcc:technical/initiate

# Gamerules
gamerule doLimitedCrafting false
gamerule logAdminCommands false
gamerule commandBlockOutput false
schedule function tcc:technical/second_clock 1s replace
schedule function tcc:technical/ten_second_clock 10s replace

# Forceloading
execute in minecraft:overworld run forceload remove -30000000 2033
execute in minecraft:overworld run forceload add -30000000 2033
execute in minecraft:overworld run setblock -30000000 0 2033 air replace
execute in minecraft:overworld run setblock -30000000 0 2033 yellow_shulker_box{Items:[{id:"minecraft:creeper_head",Count:1b}]}


# Scoreboards
scoreboard objectives add tcc.carrotstick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add tcc.minewheat minecraft.mined:minecraft.wheat
scoreboard objectives add tcc.minebeets minecraft.mined:minecraft.beetroots
scoreboard objectives add tcc.minecarrots minecraft.mined:minecraft.carrots
scoreboard objectives add tcc.minepotatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add tcc.minewarts minecraft.mined:minecraft.nether_wart

scoreboard objectives add tcc.useelytra minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add tcc.sneaktime minecraft.custom:minecraft.sneak_time
scoreboard objectives add tcc.health health

scoreboard objectives add tcc.crafted_item minecraft.crafted:minecraft.knowledge_book

scoreboard objectives add tcc.current_xp xp
scoreboard objectives add tcc.old_xp dummy

scoreboard objectives add tcc.tea dummy
scoreboard objectives add tcc.invul_timer dummy

scoreboard objectives add tcc.dummy2 dummy

scoreboard players set tcc.const.-1 tcc.dummy -1
scoreboard players set tcc.const.2 tcc.dummy 2
scoreboard players set tcc.const.3 tcc.dummy 3
scoreboard players set tcc.const.4 tcc.dummy 4
scoreboard players set tcc.const.5 tcc.dummy 5
scoreboard players set tcc.const.10 tcc.dummy 10
scoreboard players set tcc.const.16 tcc.dummy 16
scoreboard players set tcc.const.20 tcc.dummy 20
scoreboard players set tcc.const.25 tcc.dummy 25
scoreboard players set tcc.const.60 tcc.dummy 60
scoreboard players set tcc.const.100 tcc.dummy 100

execute store result score tcc.world_seed tcc.dummy run seed

scoreboard objectives add tcc.emoji trigger
scoreboard objectives add tcc.compendium trigger

team add tcc.antivillager
