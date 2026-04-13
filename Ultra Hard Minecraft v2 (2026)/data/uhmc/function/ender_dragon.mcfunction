execute as @e[type=ender_dragon,tag=!hpset] run attribute @s max_health base set 500
execute as @e[type=ender_dragon,tag=!hpset] run data modify entity @s Health set value 500
execute as @e[type=ender_dragon,tag=!hpset] run tag @s add hpset

execute as @e[type=ender_dragon,tag=!dimension_buffed] run function uhmc:ender_dragon_dimension
execute as @e[type=ender_dragon,tag=!dimension_buffed] run tag @s add dimension_buffed

execute as @e[type=dragon_fireball] run data merge entity @s {acceleration_power:0.15}


# Dragon breath buff

execute as @e[type=area_effect_cloud,nbt={custom_particle:{type:"minecraft:dragon_breath"}},tag=!spherical_dragon_breath] run tag @s add spherical_dragon_breath
execute as @e[tag=spherical_dragon_breath] run scoreboard players add @s spherical_dragon_breath_life 1

execute at @e[tag=spherical_dragon_breath] run particle dragon_breath ~ ~ ~ 5 5 5 0.01 500
execute at @e[tag=spherical_dragon_breath] run execute as @e[distance=..10] run damage @s 6 dragon_breath


execute as @e[tag=spherical_dragon_breath] if score @s spherical_dragon_breath_life matches 600.. run kill @s

# Thunderball

execute at @e[tag=thunderball] run particle electric_spark ~ ~ ~ 5 5 5 0.1 100

execute as @e[type=ender_dragon,nbt={DragonPhase:1},tag=!shot_thunderball] at @s run function uhmc:ender_dragon_thunderball
execute as @e[type=ender_dragon,nbt={DragonPhase:1},tag=!shot_thunderball] run tag @s add shot_thunderball
execute as @e[tag=thunderball] at @s run kill @e[tag=thunderball_effect,distance=..2]
execute as @e[tag=thunderball] at @s run summon interaction ~ ~ ~ {Tags:["thunderball_effect"]}

execute as @e[tag=thunderball_effect] run scoreboard players add @s thunderball_duration 1
execute as @e[tag=thunderball_effect] if score @s thunderball_duration matches 2.. at @s run function uhmc:ender_dragon_thunderball_effect
execute as @e[tag=thunderball_effect] if score @s thunderball_duration matches 20.. run kill @s

execute as @e[type=ender_dragon,nbt=!{DragonPhase:1},tag=shot_thunderball] run tag @s remove shot_thunderball 

# Perch Roar
execute as @e[type=ender_dragon] if data entity @s {DragonPhase:7} at @s run summon armor_stand 0 100 0 {Tags:["lightning_pos"]}
execute as @e[type=ender_dragon] if data entity @s {DragonPhase:7} at @s run spreadplayers ~ ~ 30 30 false @e[tag=lightning_pos,tag=!lightning_pos_set]
execute as @e[type=ender_dragon] if data entity @s {DragonPhase:7} run tag @e[tag=lightning_pos,sort=nearest,limit=1,tag=!lightning_pos_set] add lightning_pos_set

execute at @e[tag=lightning_pos_set] unless block ~ ~-0.1 ~ air run summon lightning_bolt
execute as @e[tag=lightning_pos_set] run kill @s