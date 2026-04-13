execute as @e[type=ghast,tag=!hpset] run attribute @s max_health base set 40
execute as @e[type=ghast,tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=ghast,tag=!hpset] run tag @s add hpset

execute as @e[type=ghast] run attribute @s movement_speed base set 2
execute as @e[type=ghast] run attribute @s follow_range base set 400
execute as @e[type=ghast] run data merge entity @s {ExplosionPower:4}

execute at @e[type=ghast] run execute as @e[type=fireball,distance=..10] run tag @s add ghast_fireball

execute as @e[type=ghast] run scoreboard players add @s ghast_homing_cooldown 1
execute as @e[type=ghast] if score @s ghast_homing_cooldown matches 20 run function uhmc:ghast_fireball
execute as @e[type=ghast] if score @s ghast_homing_cooldown matches 20.. run scoreboard players set @s ghast_homing_cooldown 0