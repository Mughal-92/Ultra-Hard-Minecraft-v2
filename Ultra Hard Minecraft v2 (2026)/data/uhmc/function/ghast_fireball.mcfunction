execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_x run data get entity @s Pos[0]
execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_y run data get entity @s Pos[1]
execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_z run data get entity @s Pos[2]

execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_target_x run data get entity @p Pos[0]
execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_target_y run data get entity @p Pos[1]
execute as @e[tag=ghast_fireball] at @s store result score @s ghast_fireball_target_z run data get entity @p Pos[2]

# execute as @e[tag=ghast_fireball] run scoreboard players operation @s ghast_fireball_target_x *= @p vector_scale
# execute as @e[tag=ghast_fireball] run scoreboard players operation @s ghast_fireball_target_y *= @p vector_scale
# execute as @e[tag=ghast_fireball] run scoreboard players operation @s ghast_fireball_target_z *= @p vector_scale

execute as @e[tag=ghast_fireball] at @s store result entity @s Motion[0] double 0.1 run scoreboard players operation @s ghast_fireball_target_x -= @s ghast_fireball_x
execute as @e[tag=ghast_fireball] at @s store result entity @s Motion[1] double 0.1 run scoreboard players operation @s ghast_fireball_target_y -= @s ghast_fireball_y
execute as @e[tag=ghast_fireball] at @s store result entity @s Motion[2] double 0.1 run scoreboard players operation @s ghast_fireball_target_z -= @s ghast_fireball_z