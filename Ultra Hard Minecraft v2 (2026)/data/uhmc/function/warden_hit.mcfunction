advancement revoke @s only uhmc:hurt_by_warden


effect give @s slowness 3 9
effect give @s mining_fatigue 3 4
effect give @s blindness 3 4


particle sonic_boom ~ ~ ~ 5 5 5 0 1000
execute as @e[distance=0.1..10,] run damage @s 20 sonic_boom by @e[type=warden,limit=1,sort=nearest]