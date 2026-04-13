execute as @e[type=vex,tag=!hpset] run attribute @s max_health base set 30
execute as @e[type=vex,tag=!hpset] run data modify entity @s Health set value 30
execute as @e[type=vex,tag=!hpset] run tag @s add hpset

execute as @e[type=vex] run attribute @s follow_range base set 50
execute as @e[type=vex] run execute unless items entity @s weapon.mainhand iron_axe run item replace entity @s weapon.mainhand with iron_axe