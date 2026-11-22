execute as @e[type=slime,nbt={Size:0}] run attribute @s attack_damage base set 3
execute as @e[type=slime,nbt={Size:1}] run attribute @s attack_damage base set 6
execute as @e[type=slime,nbt={Size:2}] run attribute @s attack_damage base set 9
execute as @e[type=slime,nbt={Size:3}] run attribute @s attack_damage base set 12

execute as @e[type=slime] run scoreboard players add @s slime_cooldown 1
execute as @e[type=slime,nbt={Size:2}] if score @s slime_cooldown matches 100 run attribute @s max_health base set 16
execute as @e[type=slime,nbt={Size:2}] if score @s slime_cooldown matches 100 run data merge entity @s {Size:3}
execute as @e[type=slime,nbt={Size:1}] if score @s slime_cooldown matches 100 run attribute @s max_health base set 9
execute as @e[type=slime,nbt={Size:1}] if score @s slime_cooldown matches 100 run data merge entity @s {Size:2}
execute as @e[type=slime,nbt={Size:0}] if score @s slime_cooldown matches 100 run attribute @s max_health base set 4
execute as @e[type=slime,nbt={Size:0}] if score @s slime_cooldown matches 100 run data merge entity @s {Size:1}

execute as @e[type=slime] if score @s slime_cooldown matches 100 run effect give @s instant_health 1 5
execute as @e[type=slime] if score @s slime_cooldown matches 100 run scoreboard players set @s slime_cooldown 0