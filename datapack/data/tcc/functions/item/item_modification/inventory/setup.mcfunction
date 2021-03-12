data modify storage tcc:storage root.inventory_temp set value {Inventory:[],Mainhand:{}}
data modify storage tcc:storage root.inventory_temp.Inventory set from entity @s Inventory
data modify storage tcc:storage root.inventory_temp.Mainhand set from entity @s SelectedItem