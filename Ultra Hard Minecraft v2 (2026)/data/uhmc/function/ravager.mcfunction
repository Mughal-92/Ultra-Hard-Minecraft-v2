execute as @e[type=ravager,tag=!hpset] run attribute @s max_health base set 200
execute as @e[type=ravager,tag=!hpset] run data modify entity @s Health set value 200
execute as @e[type=ravager,tag=!hpset] run tag @s add hpset

execute as @e[type=ravager] run attribute @s attack_knockback base set 5
execute as @e[type=ravager] run attribute @s attack_damage base set 30
execute as @e[type=ravager] run attribute @s movement_speed base set 0.4