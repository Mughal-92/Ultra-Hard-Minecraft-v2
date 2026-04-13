execute as @e[type=shulker,tag=!hpset] run attribute @s max_health base set 50
execute as @e[type=shulker,tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=shulker,tag=!hpset] run tag @s add hpset

execute at @e[tag=shulker_aoe] run particle end_rod ~ ~ ~ 5 5 5 0.01 100
execute at @e[tag=shulker_aoe] run effect give @e[distance=0.1..10] levitation 10

execute as @e[tag=shulker_aoe] run scoreboard players add @s shulker_aoe_timer 1
execute as @e[tag=shulker_aoe] if score @s shulker_aoe_timer matches 200.. run kill @s