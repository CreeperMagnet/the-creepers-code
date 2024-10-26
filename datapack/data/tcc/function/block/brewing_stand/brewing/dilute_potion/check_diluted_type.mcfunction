# Checks what the potion should do if it succeeds in dilution

data modify storage tcc:temp root.potion set from storage tcc:temp root.item.components."minecraft:potion_contents".potion
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id run data modify storage tcc:temp root.potion set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id
data modify storage tcc:temp root.item set value {id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"!minecraft:enchantments":{},"minecraft:custom_data":{tcc:{id:"diluted_potion",potion:{uses:[10,10]}}},"minecraft:custom_model_data":10,"!minecraft:damage":{},"!minecraft:max_damage":{}}}
data modify storage tcc:temp root.item.components."minecraft:lore" set value ['{"translate":"item.tcc.diluted_potion.uses","color":"gray","italic":false,"with":[10,10]}','{"translate":"pack.tcc","color":"#008725","italic":true}']
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.potion.id set from storage tcc:temp root.potion

execute if data storage tcc:temp root{potion:"minecraft:leaping"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"leaping",color:"blue",effect:"jump_boost",duration_0:1,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_leaping"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"leaping",color:"blue",effect:"jump_boost",duration_0:4,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:strong_leaping"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"leaping",color:"blue",effect:"jump_boost",duration_0:0,duration_1:9,amplifier:1}

execute if data storage tcc:temp root{potion:"minecraft:regeneration"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"regeneration",color:"blue",effect:"regeneration",duration_0:0,duration_1:5,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_regeneration"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"regeneration",color:"blue",effect:"regeneration",duration_0:0,duration_1:9,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:strong_regeneration"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"regeneration",color:"blue",effect:"regeneration",duration_0:0,duration_1:2,amplifier:1}

execute if data storage tcc:temp root{potion:"minecraft:fire_resistance"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"fire_resistance",color:"blue",effect:"fire_resistance",duration_0:1,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_fire_resistance"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"fire_resistance",color:"blue",effect:"fire_resistance",duration_0:4,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:water_breathing"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"water_breathing",color:"blue",effect:"water_breathing",duration_0:1,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_water_breathing"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"water_breathing",color:"blue",effect:"water_breathing",duration_0:4,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:invisibility"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"invisibility",color:"blue",effect:"invisibility",duration_0:1,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_invisibility"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"invisibility",color:"blue",effect:"invisibility",duration_0:4,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:night_vision"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"night_vision",color:"blue",effect:"night_vision",duration_0:1,duration_1:8,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_night_vision"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"night_vision",color:"blue",effect:"night_vision",duration_0:4,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:poison"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"poison",color:"red",effect:"poison",duration_0:0,duration_1:5,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_poison"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"poison",color:"red",effect:"poison",duration_0:0,duration_1:9,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:strong_poison"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"poison",color:"red",effect:"poison",duration_0:0,duration_1:2,amplifier:1}

execute if data storage tcc:temp root{potion:"minecraft:slow_falling"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"slow_falling",color:"blue",effect:"slow_falling",duration_0:0,duration_1:9,amplifier:0}
execute if data storage tcc:temp root{potion:"minecraft:long_slow_falling"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"slow_falling",color:"blue",effect:"slow_falling",duration_0:2,duration_1:4,amplifier:0}

execute if data storage tcc:temp root{potion:"tcc:nausea"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"nausea",color:"red",effect:"nausea",duration_0:0,duration_1:3,amplifier:0}
execute if data storage tcc:temp root{potion:"tcc:long_nausea"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"nausea",color:"red",effect:"nausea",duration_0:0,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"tcc:fortitude"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/fortitude
execute if data storage tcc:temp root{potion:"tcc:long_fortitude"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_fortitude
execute if data storage tcc:temp root{potion:"tcc:strong_fortitude"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_fortitude

execute if data storage tcc:temp root{potion:"minecraft:swiftness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/swiftness
execute if data storage tcc:temp root{potion:"minecraft:long_swiftness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_swiftness
execute if data storage tcc:temp root{potion:"minecraft:strong_swiftness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_swiftness

execute if data storage tcc:temp root{potion:"minecraft:slowness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/slowness
execute if data storage tcc:temp root{potion:"minecraft:long_slowness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_slowness
execute if data storage tcc:temp root{potion:"minecraft:strong_slowness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_slowness

execute if data storage tcc:temp root{potion:"minecraft:strength"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strength
execute if data storage tcc:temp root{potion:"minecraft:long_strength"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_strength
execute if data storage tcc:temp root{potion:"minecraft:strong_strength"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_strength

execute if data storage tcc:temp root{potion:"minecraft:weakness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/weakness
execute if data storage tcc:temp root{potion:"minecraft:long_weakness"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_weakness

execute if data storage tcc:temp root{potion:"minecraft:luck"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/luck

execute if data storage tcc:temp root{potion:"minecraft:infested"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"infested",color:"red",effect:"infested",duration_0:1,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:oozing"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"oozing",color:"red",effect:"oozing",duration_0:1,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:weaving"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"weaving",color:"red",effect:"weaving",duration_0:1,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:wind_charged"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_generic_tags {translation:"wind_charged",color:"red",effect:"wind_charged",duration_0:1,duration_1:8,amplifier:0}

execute if data storage tcc:temp root{potion:"minecraft:harming"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/harming
execute if data storage tcc:temp root{potion:"minecraft:strong_harming"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_harming

execute if data storage tcc:temp root{potion:"minecraft:healing"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/healing
execute if data storage tcc:temp root{potion:"minecraft:strong_healing"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_healing

execute if data storage tcc:temp root{potion:"minecraft:turtle_master"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/turtle_master
execute if data storage tcc:temp root{potion:"minecraft:long_turtle_master"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_turtle_master
execute if data storage tcc:temp root{potion:"minecraft:strong_turtle_master"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/strong_turtle_master

execute if data storage tcc:temp root{potion:"tcc:blind_rage"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/blind_rage
execute if data storage tcc:temp root{potion:"tcc:long_blind_rage"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_type/long_blind_rage

execute if data storage tcc:temp root{potion:"minecraft:water"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"water"}
execute if data storage tcc:temp root{potion:"minecraft:thick"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"thick"}
execute if data storage tcc:temp root{potion:"minecraft:awkward"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"awkward"}
execute if data storage tcc:temp root{potion:"minecraft:mundane"} run return run function tcc:block/brewing_stand/brewing/dilute_potion/set_no_effect_tags {translation:"mundane"}

# Case if none of the above return
function tcc:block/brewing_stand/brewing/dilute_potion/set_type/uncraftable