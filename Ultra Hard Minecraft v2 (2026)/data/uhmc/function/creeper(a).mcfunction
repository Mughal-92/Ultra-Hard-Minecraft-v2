# Creepers explode in 0.5 seconds 
execute as @e[type=creeper] run data modify entity @s Fuse set value 10s
execute as @e[type=creeper] run data modify entity @s ExplosionRadius set value 10

# Creepers leave behind a puddle of Nausea upon death
execute as @e[type=creeper] run effect give @s nausea infinite 3 true 

# Increased Health -> 40
execute as @e[type=creeper] run attribute @s max_health base set 40
execute as @e[type=creeper, tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=creeper,tag=!hpset] run tag @s add hpset

