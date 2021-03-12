############################################################
# Description: Revokes some toasts for scheduled players
# Creator: CreeperMagnet_
############################################################

advancement revoke @a[tag=tcc.toasts.scheduled] through tcc:technical/toast/root
advancement revoke @s through tcc:technical/toast/root
tag @a[tag=tcc.toasts.scheduled] remove tcc.toasts.scheduled
