# Checks entities in a distance specified by macro

$execute as @e[type=minecraft:cat,name=!Mulligan,distance=..$(distance)] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"components":{"minecraft:cat/variant":"tcc:mulligan"}}} run function tcc:entity/mulligan/undo/remove_tags