execute as @e[type=drowned] run data merge entity @s {equipment:{mainhand:{id:"minecraft:trident"}}}

# &6 Movement speed changed from 0.23 to 0.5 (not used)
#execute as @e[type=drowned] run attribute @s movement_speed base set 0.5



#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Increased Health
execute as @e[type=drowned] run attribute @s max_health base set 50
execute as @e[type=drowned, tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=drowned,tag=!hpset] run tag @s add hpset


#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

