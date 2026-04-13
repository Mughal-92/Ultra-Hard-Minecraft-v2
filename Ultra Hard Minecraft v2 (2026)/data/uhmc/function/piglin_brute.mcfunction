execute as @e[type=piglin_brute,tag=!hpset] run attribute @s max_health base set 150
execute as @e[type=piglin_brute,tag=!hpset] run data modify entity @s Health set value 150
execute as @e[type=piglin_brute,tag=!hpset] run tag @s add hpset

execute as @e[type=piglin_brute] run attribute @s attack_damage base set 15


execute as @e[type=piglin_brute] run item replace entity @s weapon.mainhand with netherite_axe[enchantments={fire_aspect:2}]
effect give @e[type=piglin_brute] fire_resistance
execute at @e[type=piglin_brute] run particle flame ~ ~0.8 ~ 0.5 1 0.5 0.01 2