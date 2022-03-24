############################################################
# Functions to run tickly off of ice, I guess.
############################################################

execute unless block ~ ~-1 ~ #tcc:air run function tcc:entity/iceologer/ice/land
execute unless entity @s[tag=tcc.falling_ice.double_damage] positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,scores={tcc.invul_timer=0}] run function tcc:entity/iceologer/ice/damage
execute if entity @s[tag=tcc.falling_ice.double_damage] positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0,scores={tcc.invul_timer=0}] run function tcc:entity/iceologer/ice/strength/damage
