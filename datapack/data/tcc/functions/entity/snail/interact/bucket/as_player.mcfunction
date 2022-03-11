############################################################
# Replaces items for bucketing snails properly
############################################################

execute if data entity @s SelectedItem run loot give @s loot tcc:technical/copy_nbt/snail_bucket
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand loot tcc:technical/copy_nbt/snail_bucket