execute as @e[type=zoglin,tag=!hpset] run attribute @s max_health base set 80
execute as @e[type=zoglin,tag=!hpset] run data modify entity @s Health set value 80
execute as @e[type=zoglin,tag=!hpset] run tag @s add hpset

execute as @e[type=zoglin] run attribute @s movement_speed base set 0.35
execute as @e[type=zoglin] run attribute @s attack_knockback base set 3