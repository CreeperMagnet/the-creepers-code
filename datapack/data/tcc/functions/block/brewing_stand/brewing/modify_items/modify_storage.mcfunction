############################################################
# Modifies the item in storage
############################################################

data modify storage tcc:storage root.temp.ingredient set from block ~ ~ ~ Items[{Slot:3b}]
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"sightless_eye"} if data storage tcc:storage root.temp.item{id:"minecraft:potion",tag:{Potion:"minecraft:water"}} run data modify storage tcc:storage root.temp.item.tag.Potion set value "minecraft:mundane"
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"amethyst_dust"} unless data storage tcc:storage root.temp.item{id:"minecraft:potion"} if data storage tcc:storage root.temp.item.tag{Potion:"minecraft:awkward"} run data modify storage tcc:storage root.temp.item.tag.Potion set value "minecraft:mundane"
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"amethyst_dust"} if data storage tcc:storage root.temp.item{id:"minecraft:potion"} run function tcc:block/brewing_stand/brewing/dilute_potion/check_diluted_type
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"sightless_eye"} if data storage tcc:storage root.temp.item.tag{Potion:"minecraft:awkward"} run function tcc:block/brewing_stand/brewing/brew_custom_potion/blind_rage
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"warped_wart"} if data storage tcc:storage root.temp.item.tag{Potion:"minecraft:water"} run function tcc:block/brewing_stand/brewing/brew_custom_potion/nausea
execute if data storage tcc:storage root.temp.ingredient.tag.tcc{id:"warped_wart"} if data storage tcc:storage root.temp.item.tag{Potion:"minecraft:awkward"} run function tcc:block/brewing_stand/brewing/brew_custom_potion/nausea
execute if data storage tcc:storage root.temp.ingredient{id:"minecraft:redstone"} if data storage tcc:storage root.temp.item.tag.tcc.potion{can_extend:1b} run function tcc:block/brewing_stand/brewing/edit_potion/extend
execute if data storage tcc:storage root.temp.ingredient{id:"minecraft:glowstone_dust"} if data storage tcc:storage root.temp.item.tag.tcc.potion{can_amplify:1b} run function tcc:block/brewing_stand/brewing/edit_potion/amplify
execute if data storage tcc:storage root.temp.ingredient{id:"minecraft:gunpowder"} if data storage tcc:storage root.temp.item.tag.tcc.potion.id if data storage tcc:storage root.temp.item{id:"minecraft:potion"} run function tcc:block/brewing_stand/brewing/edit_potion/make_splash
execute if data storage tcc:storage root.temp.ingredient{id:"minecraft:dragon_breath"} if data storage tcc:storage root.temp.item.tag.tcc.potion.id if data storage tcc:storage root.temp.item{id:"minecraft:splash_potion"} run function tcc:block/brewing_stand/brewing/edit_potion/make_lingering