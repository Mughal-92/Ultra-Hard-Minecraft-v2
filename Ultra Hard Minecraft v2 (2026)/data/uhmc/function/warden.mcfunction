execute as @e[type=warden,tag=!hpset] run attribute @s max_health base set 1000
execute as @e[type=warden,tag=!hpset] run data modify entity @s Health set value 1000
execute as @e[type=warden,tag=!hpset] run tag @s add hpset

execute as @e[type=warden] run attribute @s attack_damage base set 50
execute as @e[type=warden] run attribute @s follow_range base set 72


execute as @e[type=warden] run scoreboard players add @s warden_sculk_infection_cooldown 1
execute as @e[type=warden] if score @s warden_sculk_infection_cooldown matches 300 run execute at @s run function uhmc:warden_sculk_infection_spread
execute as @e[type=warden] if score @s warden_sculk_infection_cooldown matches 310.. run execute at @s run function uhmc:warden_sculk_infection_convert
execute as @e[type=warden] if score @s warden_sculk_infection_cooldown matches 310.. run scoreboard players set @s warden_sculk_infection_cooldown 0