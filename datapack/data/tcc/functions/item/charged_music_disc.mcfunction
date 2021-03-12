############################################################
# Description: Causes a different weather time depending on music disc
# Creator: ChromaKey
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.doChargedDiscs

execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_13=true}}] run weather thunder 178
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_cat=true}}] run weather thunder 185
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_blocks=true}}] run weather thunder 345
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_chirp=true}}] run weather thunder 185
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_far=true}}] run weather thunder 174
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_mall=true}}] run weather thunder 197
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_mellohi=true}}] run weather thunder 96
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_stal=true}}] run weather thunder 150
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_strad=true}}] run weather thunder 188
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_ward=true}}] run weather thunder 251
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_11=true}}] run weather thunder 71
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_wait=true}}] run weather thunder 238
execute if entity @s[scores={tcc.dummy=1..},advancements={tcc:technical/item/charged_music_disc={music_disc_pigstep=true}}] run weather thunder 148

advancement revoke @s only tcc:technical/item/charged_music_disc
scoreboard players reset @s tcc.dummy
