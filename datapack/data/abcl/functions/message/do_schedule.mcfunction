execute store result score @s abcl.scheduled run time query gametime
scoreboard players add @s abcl.scheduled 40
tag @s add abcl.scheduled
schedule function abcl:message/scheduled 40t append