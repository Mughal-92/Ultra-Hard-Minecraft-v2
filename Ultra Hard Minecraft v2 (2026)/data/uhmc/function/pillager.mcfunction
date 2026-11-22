execute as @e[type=pillager,tag=!hpset] run attribute @s max_health base set 72
execute as @e[type=pillager,tag=!hpset] run data modify entity @s Health set value 72
execute as @e[type=pillager,tag=!hpset] run tag @s add hpset

execute as @e[type=pillager] run attribute @s follow_range base set 96

# MASSIVE crossbow + firework modification commands
execute as @e[type=pillager] unless items entity @s weapon.mainhand crossbow[enchantments={quick_charge:3,multishot:1}] run item replace entity @s weapon.mainhand with crossbow[enchantments={quick_charge:3,multishot:1}]
execute as @e[type=pillager] unless items entity @s weapon.offhand firework_rocket run item replace entity @s weapon.offhand with firework_rocket[fireworks={flight_duration:3,explosions:[{shape:"large_ball",has_twinkle:0b,has_trail:0b,colors:[I;1973019,11743532]}]}] 64