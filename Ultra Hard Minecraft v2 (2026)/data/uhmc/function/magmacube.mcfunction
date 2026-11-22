execute as @e[type=magma_cube,nbt={Size:0}] run attribute @s attack_damage base set 3
execute as @e[type=magma_cube,nbt={Size:1}] run attribute @s attack_damage base set 6
execute as @e[type=magma_cube,nbt={Size:2}] run attribute @s attack_damage base set 9
execute as @e[type=magma_cube,nbt={Size:3}] run attribute @s attack_damage base set 12

execute as @e[type=magma_cube] run scoreboard players add @s magma_cube_cooldown 1
execute as @e[type=magma_cube,nbt={Size:2}] if score @s magma_cube_cooldown matches 100 run attribute @s max_health base set 16
execute as @e[type=magma_cube,nbt={Size:2}] if score @s magma_cube_cooldown matches 100 run data merge entity @s {Size:3}
execute as @e[type=magma_cube,nbt={Size:1}] if score @s magma_cube_cooldown matches 100 run attribute @s max_health base set 9
execute as @e[type=magma_cube,nbt={Size:1}] if score @s magma_cube_cooldown matches 100 run data merge entity @s {Size:2}
execute as @e[type=magma_cube,nbt={Size:0}] if score @s magma_cube_cooldown matches 100 run attribute @s max_health base set 4
execute as @e[type=magma_cube,nbt={Size:0}] if score @s magma_cube_cooldown matches 100 run data merge entity @s {Size:1}

execute as @e[type=magma_cube] if score @s magma_cube_cooldown matches 100 run effect give @s instant_health 1 5
execute as @e[type=magma_cube] if score @s magma_cube_cooldown matches 100 run scoreboard players set @s magma_cube_cooldown 0