############################################################
# Adds all scoreboards and sets up everything
############################################################

# Use for single-tick operations
scoreboard objectives add tcc.dummy dummy

tellraw @a[predicate=tcc:entity/debug_player] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.tcc.reload.success","color":"white","bold":false}]
execute unless score #server_version tcc.dummy matches 100 run function tcc:technical/initiate

# Refresh the compendium for all players that currently have one
execute as @a[nbt={Inventory:[{tag:{tcc:{id:"compendium"}}}]},gamemode=!spectator] run function tcc:item/compendium

## Gamerules
gamerule doLimitedCrafting false
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 2147483647

## Scoreboards
scoreboard objectives add tcc.used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add tcc.health health
scoreboard objectives add tcc.crafted_item minecraft.crafted:minecraft.knowledge_book
scoreboard objectives add tcc.drop minecraft.custom:minecraft.drop
scoreboard objectives add tcc.current_xp xp
scoreboard objectives add tcc.old_xp dummy
scoreboard objectives add tcc.tea dummy
scoreboard objectives add tcc.boomerang_cooldown dummy

#Use for operations spanning multiple ticks
scoreboard objectives add tcc.dummy2 dummy

## Scoreboard Constants
scoreboard players set #-1 tcc.dummy -1
scoreboard players set #2 tcc.dummy 2
scoreboard players set #3 tcc.dummy 3
scoreboard players set #4 tcc.dummy 4
scoreboard players set #5 tcc.dummy 5
scoreboard players set #6 tcc.dummy 6
scoreboard players set #10 tcc.dummy 10
scoreboard players set #12 tcc.dummy 12
scoreboard players set #16 tcc.dummy 16
scoreboard players set #25 tcc.dummy 25
scoreboard players set #31 tcc.dummy 31
scoreboard players set #60 tcc.dummy 60
scoreboard players set #100 tcc.dummy 100
scoreboard players set #180 tcc.dummy 180

## World Data
execute store result score #world_seed tcc.dummy run seed

## Wandering Witch Timer
execute unless score #wandering_witch_timer tcc.dummy matches -2147483648..2147483647 run scoreboard players set #wandering_witch_timer tcc.dummy 180

## Triggered Objectives
scoreboard objectives add tcc.emoji trigger
scoreboard objectives add tcc.compendium trigger

## Teams
team add tcc.recovery_compass
team modify tcc.recovery_compass color aqua
