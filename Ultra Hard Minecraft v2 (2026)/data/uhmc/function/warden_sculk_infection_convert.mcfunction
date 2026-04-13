particle soul_fire_flame ~ ~ ~ 10 0 10 0.2 5000

execute as @e[tag=sculk_pos] store result score @s warden_sculk_infection_block run random value 1..100

execute as @e[tag=sculk_pos] at @s if score @s warden_sculk_infection_block matches 1..5 run setblock ~ ~ ~ sculk_shrieker[can_summon=true]
execute as @e[tag=sculk_pos] at @s if score @s warden_sculk_infection_block matches 6..15 run setblock ~ ~ ~ sculk_catalyst
execute as @e[tag=sculk_pos] at @s if score @s warden_sculk_infection_block matches 16..40 run setblock ~ ~ ~ sculk_sensor
execute as @e[tag=sculk_pos] at @s if score @s warden_sculk_infection_block matches 41..100 run setblock ~ ~-1 ~ sculk

kill @e[tag=sculk_pos]