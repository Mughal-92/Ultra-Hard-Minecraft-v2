# Piglins spawn a brute upon player hit

execute as @e[type=piglin,nbt={HurtTime:10s}] run execute at @s run summon piglin_brute ~ ~ ~

# Spear and axe Reinforcements
execute as @e[type=piglin] run scoreboard players add @s mob_support 1
execute as @e[type=piglin] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_spear] run execute at @s run summon piglin ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_spear"}}}
execute as @e[type=piglin] if score @s mob_support matches 5 run execute at @s unless entity @e[distance=..10,predicate=uhmc:has_axe] run execute at @s run summon piglin ~ ~ ~ {equipment:{mainhand:{id:"minecraft:iron_axe"}}}
execute as @e[type=piglin] if score @s mob_support matches 1200.. run scoreboard players reset @s mob_support

# Increased Health
execute as @e[type=piglin] run attribute @s max_health base set 60
execute as @e[type=piglin, tag=!hpset] run data modify entity @s Health set value 60
execute as @e[type=piglin,tag=!hpset] run tag @s add hpset

# Health gets increased from 20 -> 60 when spawned 