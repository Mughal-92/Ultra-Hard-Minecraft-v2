execute as @e[type=enderman,tag=!hpset] run attribute @s max_health base set 80
execute as @e[type=enderman,tag=!hpset] run data modify entity @s Health set value 80
execute as @e[type=enderman,tag=!hpset] run tag @s add hpset

execute as @e[type=enderman] run attribute @s attack_damage base set 14

execute as @e[type=enderman] if predicate uhmc:targeted_by_enderman run effect give @a blindness 3