execute as @e[type=wither_skeleton,tag=!hpset] run attribute @s max_health base set 50
execute as @e[type=wither_skeleton,tag=!hpset] run data modify entity @s Health set value 50
execute as @e[type=wither_skeleton,tag=!hpset] run tag @s add hpset


execute at @e[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @e[distance=0.1..6,type=!wither_skeleton] wither 10
execute at @e[type=wither_skeleton] run effect give @e[distance=0.1..6] wither 10

execute at @e[nbt={active_effects:[{id:"minecraft:wither"}]}] run particle dust{color:[0,0,0] , scale:1} ~ ~ ~ 3 3 3 1 50 force
execute at @e[type=wither_skeleton] run particle dust{color:[0,0,0] , scale:1} ~ ~ ~ 3 3 3 1 50 force