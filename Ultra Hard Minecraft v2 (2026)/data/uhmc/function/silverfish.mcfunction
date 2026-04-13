execute as @e[type=silverfish,tag=!hpset] run attribute @s max_health base set 20
execute as @e[type=silverfish,tag=!hpset] run data modify entity @s Health set value 20
execute as @e[type=silverfish,tag=!hpset] run tag @s add hpset

# hit detection
execute as @e[type=minecraft:silverfish,nbt={HurtTime:10s}] run function uhmc:silverfish_dupe