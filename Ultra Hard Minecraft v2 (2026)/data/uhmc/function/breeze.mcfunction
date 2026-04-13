execute as @e[type=breeze,tag=!hpset] run attribute @s max_health base set 50
execute as @e[type=breeze,tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=breeze,tag=!hpset] run tag @s add hpset

execute as @e[type=breeze] run attribute @s follow_range base set 48

execute at @e[type=breeze_wind_charge,tag=!wincharge_split] run kill @e[type=interaction,distance=..5,tag=windcharge_tracker]
execute at @e[type=breeze_wind_charge,tag=!wincharge_split] run summon interaction ~ ~ ~ {Tags:["windcharge_tracker"]}

execute as @e[tag=windcharge_tracker] run scoreboard players add @s windcharge_tracker_life 1
execute as @e[tag=windcharge_tracker] run execute if score @s windcharge_tracker_life matches 2.. run execute at @s run function uhmc:breeze_explosion
execute as @e[tag=windcharge_tracker] run execute if score @s windcharge_tracker_life matches 2.. run kill @s