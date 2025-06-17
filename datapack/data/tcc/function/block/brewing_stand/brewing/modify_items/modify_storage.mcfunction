# Modifies the item in storage... or in the brewing stand, using item modifiers

# Custom potion creation/some mundane exceptions
$execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"sightless_eye"} run return run function tcc:block/brewing_stand/brewing/brew_custom_potion/default_macro {slot:$(slot),potion:"blind_rage"}
$execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"scalesprouts"} run return run function tcc:block/brewing_stand/brewing/brew_custom_potion/serum_of_sprouting {slot:$(slot)}
$execute if data storage tcc:temp root.ingredient{id:"minecraft:fermented_spider_eye"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"serum_of_sprouting"} run item replace block ~ ~ ~ container.$(slot) with minecraft:air
$execute if data storage tcc:temp root.ingredient{id:"minecraft:fermented_spider_eye"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"serum_of_sprouting"} run return run loot replace block ~ ~ ~ container.$(slot) loot tcc:items/serum_of_shrinking
$execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"heartbeet"} run return run function tcc:block/brewing_stand/brewing/brew_custom_potion/default_macro {slot:$(slot),potion:"fortitude"}
$execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"enchanted_golden_carrot"} if data storage tcc:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:awkward"} run return run item modify block ~ ~ ~ container.$(slot) tcc:set_potion_data/type/long_night_vision
$execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"amethyst_dust"} unless data storage tcc:temp root.item{id:"minecraft:potion"} if data storage tcc:temp root.item.components."minecraft:potion_contents"{"potion":"minecraft:awkward"} run return run item modify block ~ ~ ~ container.$(slot) tcc:set_potion_data/type/mundane


# Extends or amplify an existing potion
$execute if data storage tcc:temp root.ingredient{id:"minecraft:redstone"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{can_extend:1b} run return run function tcc:block/brewing_stand/brewing/edit_potion/extend {slot:$(slot)}
$execute if data storage tcc:temp root.ingredient{id:"minecraft:glowstone_dust"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion{can_amplify:1b} run return run function tcc:block/brewing_stand/brewing/edit_potion/amplify {slot:$(slot)}


# Below this point is only stuff that needs the data of the brewing stand modified directly (diluted pots, making splash/lingering)
execute if data storage tcc:temp root.ingredient.components."minecraft:custom_data".tcc{id:"amethyst_dust"} if data storage tcc:temp root.item{id:"minecraft:potion"} run function tcc:block/brewing_stand/brewing/dilute_potion/check_diluted_type
execute if data storage tcc:temp root.ingredient{id:"minecraft:gunpowder"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id if data storage tcc:temp root.item{id:"minecraft:potion"} run data modify storage tcc:temp root.item.id set value "minecraft:splash_potion"
execute if data storage tcc:temp root.ingredient{id:"minecraft:dragon_breath"} if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id if data storage tcc:temp root.item{id:"minecraft:splash_potion"} run data modify storage tcc:temp root.item.id set value "minecraft:lingering_potion"

$data modify storage tcc:temp root.item.Slot set value $(slot)b
$data modify block ~ ~ ~ Items[{Slot:$(slot)b}] set from storage tcc:temp root.item