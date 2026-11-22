execute as @e[type=evoker,tag=!hpset] run attribute @s max_health base set 48
execute as @e[type=evoker,tag=!hpset] run data modify entity @s Health set value 48
execute as @e[type=evoker,tag=!hpset] run tag @s add hpset

execute as @e[type=evoker] run attribute @s follow_range base set 48

# Fireball stuff
execute as @e[type=evoker] run scoreboard players add @s evoker_fireball_cooldown 1
execute as @e[type=evoker] if predicate uhmc:targeted_by_evoker run execute if score @s evoker_fireball_cooldown matches 100.. run execute at @s run function uhmc:evoker_fireball_shoot
execute as @e[type=evoker] if score @s evoker_fireball_cooldown matches 100.. run scoreboard players set @s evoker_fireball_cooldown 0

# Fangs
execute at @e[type=evoker_fangs,tag=!evoker_instafang,tag=!evoker_fang_extension] run summon evoker_fangs ^20 ^ ^ {Tags:["evoker_fang_extension"]}

execute at @e[type=evoker_fangs,tag=!evoker_instafang,tag=!evoker_outerfang] run summon evoker_fangs ^ ^ ^3 {Tags:["evoker_outerfang"]}
execute at @e[type=evoker_fangs,tag=!evoker_instafang,tag=!evoker_outerfang] run summon evoker_fangs ^ ^ ^-3 {Tags:["evoker_outerfang"]}
execute at @e[type=evoker_fangs,tag=!evoker_instafang,tag=!evoker_outerfang] run summon evoker_fangs ^ ^ ^1.5 {Tags:["evoker_outerfang"]}
execute at @e[type=evoker_fangs,tag=!evoker_instafang,tag=!evoker_outerfang] run summon evoker_fangs ^ ^ ^-1.5 {Tags:["evoker_outerfang"]}


execute as @e[type=evoker_fangs,tag=!evoker_instafang] run data merge entity @s {Warmup:0}
execute as @e[type=evoker_fangs,tag=!evoker_instafang] run tag @s add evoker_instafang