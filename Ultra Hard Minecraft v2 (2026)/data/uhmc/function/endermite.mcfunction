execute as @e[type=endermite,tag=!hpset] run attribute @s max_health base set 20
execute as @e[type=endermite,tag=!hpset] run data modify entity @s Health set value 20
execute as @e[type=endermite,tag=!hpset] run tag @s add hpset

execute as @e[type=endermite] run attribute @s scale base set 0.5