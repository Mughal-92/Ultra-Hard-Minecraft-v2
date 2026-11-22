execute as @e[type=witch,tag=!hpset] run attribute @s max_health base set 60
execute as @e[type=witch,tag=!hpset] run data modify entity @s Health set value 60
execute as @e[type=witch,tag=!hpset] run tag @s add hpset

execute as @e[type=splash_potion] run scoreboard players add @s witch_potion_life 1
execute as @e[type=splash_potion] if score @s witch_potion_life matches 1 run execute at @s if entity @e[type=witch,limit=1,distance=..5] run data merge entity @s {Item:{id:"splash_potion",components:{"minecraft:potion_contents":{custom_effects:[{id:"poison",amplifier:1,duration:1200} , {id:"weakness",amplifier:1,duration:1200} , {id:"slowness",amplifier:1,duration:1200} , {id:"instant_damage",amplifier:1}]}}}}