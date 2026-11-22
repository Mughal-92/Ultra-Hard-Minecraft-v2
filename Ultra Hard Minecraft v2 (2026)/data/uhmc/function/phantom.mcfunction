execute as @e[type=phantom,tag=!hpset] run attribute @s max_health base set 40
execute as @e[type=phantom,tag=!hpset] run data modify entity @s Health set value 40
execute as @e[type=phantom,tag=!hpset] run tag @s add hpset
execute as @e[type=phantom] run attribute @s attack_damage base set 10

execute as @e[type=phantom] run effect give @a blindness 3
execute as @e[type=phantom] run effect give @a slowness 3 2

# execute as @e[type=phantom] run effect give @s glowing 3

execute at @e[type=phantom] run particle dust{color:[0.2,0.2,0.2],scale:1} ~ ~.2 ~ 0 0 0 0.01 5
execute at @e[type=phantom] run particle dust{color:[0.2,0.2,0.2],scale:1} ^1 ^.2 ^ 0 0 0 0.01 5
execute at @e[type=phantom] run particle dust{color:[0.2,0.2,0.2],scale:1} ^-1 ^.2 ^ 0 0 0 0.01 5