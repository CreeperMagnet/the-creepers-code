# Adds all scoreboards and sets up everything

# Use for single-tick operations
scoreboard objectives add tcc.dummy dummy

tellraw @a[predicate=tcc:entity_properties/is_developer] [{"translate":"debug.prefix","color":"yellow","bold":true},{"translate":"commands.tcc.reload.success","color":"white","bold":false}]
execute unless score #server_version tcc.dummy matches 122 run function tcc:technical/initiate

# Refresh the compendium for all players that currently have one
execute as @a run function tcc:item/compendium/refresh

## Gamerules
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 1073741824

## Compendium Data
execute unless data storage tcc:compendium player_data run data merge storage tcc:compendium {player_data:[]}
# The following line is updated when the generator is run
data modify storage tcc:compendium version set value {release:5,dev:0}

## Scoreboards
scoreboard objectives add tcc.used_warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add tcc.health health
scoreboard objectives add tcc.tea dummy
scoreboard objectives add tcc.boomerang_cooldown dummy
scoreboard objectives add tcc.cursed_crown_cooldown dummy
scoreboard objectives add tcc.soul_seer_cooldown dummy
scoreboard objectives add tcc.sneaking minecraft.custom:sneak_time

#Use for operations spanning multiple ticks
scoreboard objectives add tcc.dummy2 dummy

## Scoreboard Constants
scoreboard players set #-1 tcc.dummy -1
scoreboard players set #0 tcc.dummy 0
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

## Wandering Witch Timer
execute unless score #wandering_witch_timer tcc.dummy matches -2147483648..2147483647 run scoreboard players set #wandering_witch_timer tcc.dummy 180

## Triggered Objectives
scoreboard objectives add tcc.emoji trigger
scoreboard objectives add tccc.internal_trigger trigger

## Teams
team add tcc.recovery_compass
team modify tcc.recovery_compass color aqua
team add smithed.prevent_aggression
team modify smithed.prevent_aggression friendlyFire false
team add tcc.no_nametag
team modify tcc.no_nametag nametagVisibility never