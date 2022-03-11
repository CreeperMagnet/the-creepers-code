############################################################
# Sets an armor stand pose
############################################################

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add tcc.posed_armor_stand.running
data modify entity @s Pose set value {LeftLeg:[315f,0f,0f],RightLeg:[45f,0f,0f],LeftArm:[45f,0f,0f],RightArm:[315f,0f,0f]}