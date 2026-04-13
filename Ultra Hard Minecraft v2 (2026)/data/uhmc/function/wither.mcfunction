execute at @e[type=wither,nbt={Invul:2}] run summon creeper ~ ~ ~ {ExplosionRadius:40 , Fuse:0}

execute as @e[type=wither,tag=!hpset] run attribute @s max_health base set 500
execute as @e[type=wither,tag=!hpset] run data modify entity @s Health set value 500
execute as @e[type=wither,tag=!hpset] run tag @s add hpset

execute as @e[type=wither] run attribute @s follow_range base set 200
execute as @e[type=wither] run attribute @s movement_speed base set 2

execute as @e[type=wither] store result score @s wither_health run data get entity @s Health

# Wither skulls section
execute at @e[type=wither_skull] run kill @e[type=interaction,tag=wither_tracker,distance=..2]
execute at @e[type=wither_skull] run summon interaction ~ ~ ~ {Tags:["wither_tracker"]}

execute as @e[tag=wither_tracker] run scoreboard players add @s wither_tracker_life 1
execute as @e[tag=wither_tracker] if score @s wither_tracker_life matches 2.. run execute at @s run summon creeper ~ ~ ~ {Fuse:0 , ExplosionRadius: 2}
execute as @e[tag=wither_tracker] if score @s wither_tracker_life matches 2.. run kill @s



execute as @e[type=wither] run scoreboard players add @s wither_ability 1

# Wither skull burst Ability
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 300..310 run execute at @s run particle large_smoke ~ ~ ~ 2 2 2 0.1 10
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 310..320 run execute at @s run particle large_smoke ~ ~ ~ 4 4 4 0.1 20
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 320..330 run execute at @s run particle large_smoke ~ ~ ~ 6 6 6 0.1 40
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 330..340 run execute at @s run particle large_smoke ~ ~ ~ 8 8 8 0.1 80
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 340..350 run execute at @s run particle large_smoke ~ ~ ~ 10 10 10 0.1 160

execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 350 run execute at @s run playsound entity.wither.death master @a ~ ~ ~
execute as @e[type=wither] if score @s wither_health matches 250.. run execute if score @s wither_ability matches 350.. run execute at @s run function uhmc:wither_skull_burst


# Wither Reanimation Ability

execute as @e[type=wither] if score @s wither_health matches ..250 run execute if score @s wither_ability matches 400.. run execute at @s run function uhmc:wither_reanimate




execute as @e[type=wither] if score @s wither_ability matches 400 run scoreboard players set @s wither_ability 0