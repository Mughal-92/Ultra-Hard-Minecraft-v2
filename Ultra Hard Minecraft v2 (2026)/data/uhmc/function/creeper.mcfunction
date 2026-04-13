execute as @e[type=creeper,tag=!hpset] run attribute @s max_health base set 40
execute as @e[type=creeper,tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=creeper,tag=!hpset] run tag @s add hpset

execute as @e[type=creeper] run attribute @s movement_speed base set 0.5
execute as @e[type=creeper] run data merge entity @s {ExplosionRadius:10}
execute as @e[type=creeper] run data merge entity @s {Fuse:20s}