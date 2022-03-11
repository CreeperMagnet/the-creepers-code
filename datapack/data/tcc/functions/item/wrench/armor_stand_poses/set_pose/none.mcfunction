############################################################
# Sets an armor stand pose
############################################################

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s remove tcc.posed_armor_stand
data remove entity @s Pose