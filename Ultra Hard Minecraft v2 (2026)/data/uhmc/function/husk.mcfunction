# Spear and axe Reinforcements
execute as @e[type=husk] run scoreboard players add @s mob_support 1
execute as @e[type=husk] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_spear] run execute at @s run summon husk ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_spear"}}}
execute as @e[type=husk] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_axe] run execute at @s run summon husk ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}}}
execute as @e[type=husk] if score @s mob_support matches 1200.. run scoreboard players reset @s mob_support

# husks check if there are spear husks withing 10 blocks of them every 10 minute.
# If no spear husks are found, then the husks will summon a spear husk ontop of them

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Increased Health
execute as @e[type=husk] run attribute @s max_health base set 50
execute as @e[type=husk, tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=husk,tag=!hpset] run tag @s add hpset

# Health gets increased from 20 -> 40 when spawned 

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

