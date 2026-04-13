execute as @e[type=elder_guardian,tag=!hpset] run attribute @s max_health base set 160
execute as @e[type=elder_guardian,tag=!hpset] run data modify entity @s Health set value 160
execute as @e[type=elder_guardian,tag=!hpset] run tag @s add hpset

execute as @e[type=elder_guardian] run attribute @s movement_speed base set 2
execute as @e[type=elder_guardian] run attribute @s attack_damage base set 18
execute as @e[type=elder_guardian] run attribute @s follow_range base set 50

execute at @e[type=elder_guardian] run execute as @e[type=!guardian,type=!elder_guardian,type=!item,distance=..20] at @s if block ~ ~ ~ water run fill ~1 ~ ~1 ~-1 ~ ~-1 bubble_column replace water