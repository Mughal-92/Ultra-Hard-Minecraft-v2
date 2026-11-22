execute as @e[type=vindicator,tag=!hpset] run attribute @s max_health base set 72
execute as @e[type=vindicator,tag=!hpset] run data modify entity @s Health set value 72
execute as @e[type=vindicator,tag=!hpset] run tag @s add hpset

execute at @e[type=vindicator] run kill @e[type=interaction,distance=..5,tag=vindicator_tracker]
execute at @e[type=vindicator] run summon interaction ~ ~ ~ {Tags:["vindicator_tracker"]}

execute as @e[tag=vindicator_tracker] run scoreboard players add @s vindicator_tracker_life 1
execute as @e[tag=vindicator_tracker] run execute if score @s vindicator_tracker_life matches 2.. run execute at @s run function uhmc:vindicator_ghost
execute as @e[tag=vindicator_tracker] run execute if score @s vindicator_tracker_life matches 2.. run kill @s