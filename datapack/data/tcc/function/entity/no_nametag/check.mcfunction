# Functions to run when a player names an entity that isn't supposed to display a nametag

execute if entity @s[tag=tcc.archaeologist,nbt=!{CustomName:{"translate":"entity.tcc.archaeologist"}}] run team leave @s