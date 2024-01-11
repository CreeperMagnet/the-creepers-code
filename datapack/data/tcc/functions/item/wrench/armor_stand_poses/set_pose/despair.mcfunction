# Sets an armor stand pose

function tcc:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add tcc.posed_armor_stand.despair
data modify entity @s Pose set value {Head:[29f,0f,0f],LeftArm:[255f,29f,0f],RightArm:[255f,331f,0f]}