############################################################
# Commands to only run once per install
############################################################

execute unless data storage tcc:storage root.gamerules run data merge storage tcc:storage {root:{gamerules:{alwaysShowTeaTimer:0b,reducedGoldenChorusFruitSpread:0b}}}

# Soul Conductor Limit
scoreboard players set #soul_conductor_limit tcc.dummy 2000

scoreboard players set #server_version tcc.dummy 122
