############################################################
# Aggravates a mob via the brain nbt
############################################################

data merge entity @s {Brain:{memories:{"minecraft:angry_at":{value:[I; 0, 0, 0, 0],ttl:800}}}}
data modify entity @s Brain.memories."minecraft:angry_at".value set from storage tcc:storage root.temp.boomerang.UUID
