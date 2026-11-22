execute as @e[type=hoglin,tag=!hpset] run attribute @s max_health base set 80
execute as @e[type=hoglin,tag=!hpset] run data modify entity @s Health set value 80
execute as @e[type=hoglin,tag=!hpset] run tag @s add hpset

execute as @e[type=hoglin] run attribute @s movement_speed base set 0.35
execute as @e[type=hoglin] run attribute @s attack_knockback base set 3