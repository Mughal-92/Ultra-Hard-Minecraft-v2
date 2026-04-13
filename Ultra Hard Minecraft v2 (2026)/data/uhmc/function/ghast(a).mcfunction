execute as @e[type=ghast] run execute at @s run data modify entity @e[type=fireball,sort= nearest, limit=1] ExplosionPower set value 10b
execute as @e[type=ghast] run attribute @s flying_speed base set 0.1
execute as @e[type=ghast] run attribute @s follow_range base set 200