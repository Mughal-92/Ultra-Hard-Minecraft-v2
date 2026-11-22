execute as @e[type=blaze,tag=!hpset] run attribute @s max_health base set 40
execute as @e[type=blaze,tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=blaze,tag=!hpset] run tag @s add hpset


tag @e[type=small_fireball,tag=!blazemain,tag=!blazetrail] add blazemain

execute as @e[tag=blazetrail] run scoreboard players add @s blaze_trail_timer 1
execute as @e[tag=blazetrail] run execute if score @s blaze_trail_timer matches 20.. run kill @s


execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[0,0.01,0],Tags:["blazetrail"]}
execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[0,-0.01,0],Tags:["blazetrail"]}

execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[0.01,0,0],Tags:["blazetrail"]}
execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[-0.01,0,0],Tags:["blazetrail"]}

execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[0,0,0.01],Tags:["blazetrail"]}
execute at @e[tag=blazemain] run summon small_fireball ~ ~ ~ {Motion:[0,0,-0.01],Tags:["blazetrail"]}