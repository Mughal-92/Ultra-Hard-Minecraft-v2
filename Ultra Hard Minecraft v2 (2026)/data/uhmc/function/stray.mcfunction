# RAAAAH Reinforcements

execute as @e[type=stray] run scoreboard players add @s mob_support 1
execute as @e[type=stray] if score @s mob_support matches 5 run execute at @s unless entity @s[distance=..10,predicate=uhmc:raaaaaah] run execute at @s run summon stray ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_sword"},offhand:{id:"minecraft:shield"}}}
execute as @e[type=stray] if score @s mob_support matches 1200.. run scoreboard players reset @s mob_support

# Skellies check if there are RAAAH skellies withing 10 blocks of them every 1 minute.
# If no RAAAH skellies are found, then the skellies will summon a RAAAAH skelly ontop of them

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# RAAAAH SFX

execute as @e[type=stray,predicate=uhmc:raaaaaah] run scoreboard players add @s raaaah 1
execute as @e[type=stray,predicate=uhmc:raaaaaah] if score @s raaaah matches 3 run execute at @s run playsound block.anvil.use hostile @a ~ ~ ~ 10 0.9 1 
execute as @e[type=stray,predicate=uhmc:raaaaaah] if score @s raaaah matches 60.. run scoreboard players reset @s raaaah

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#

# Increased Health
execute as @e[type=stray] run attribute @s max_health base set 40
execute as @e[type=stray, tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=stray,tag=!hpset] run tag @s add hpset

#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
