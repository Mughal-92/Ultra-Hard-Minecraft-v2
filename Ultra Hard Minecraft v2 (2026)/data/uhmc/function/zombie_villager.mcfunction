# Spear and axe Reinforcements
execute as @e[type=zombie_villager] run scoreboard players add @s mob_support 1
execute as @e[type=zombie_villager] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_spear] run execute at @s run summon zombie_villager ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_spear"}}}
execute as @e[type=zombie_villager] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_axe] run execute at @s run summon zombie_villager ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}}}
execute as @e[type=zombie_villager] if score @s mob_support matches 1200.. run scoreboard players reset @s mob_support

# zombie_villagers check if there are spear zombie_villagers withing 10 blocks of them every 10 minute.
# If no spear zombie_villagers are found, then the zombie_villagers will summon a spear zombie_villager ontop of them

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Increased Health
execute as @e[type=zombie_villager] run attribute @s max_health base set 50
execute as @e[type=zombie_villager, tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=zombie_villager,tag=!hpset] run tag @s add hpset

# Health gets increased from 20 -> 40 when spawned 

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
