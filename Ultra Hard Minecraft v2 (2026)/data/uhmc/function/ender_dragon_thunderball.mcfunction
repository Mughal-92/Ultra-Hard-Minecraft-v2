execute store result score @s dragon_x run data get entity @s Pos[0]
execute store result score @s dragon_y run data get entity @s Pos[1]
execute store result score @s dragon_z run data get entity @s Pos[2]

execute store result score @a[sort=nearest,limit=1] dragontarget_x run data get entity @a[sort=nearest,limit=1] Pos[0]
execute store result score @a[sort=nearest,limit=1] dragontarget_y run data get entity @a[sort=nearest,limit=1] Pos[1]
execute store result score @a[sort=nearest,limit=1] dragontarget_z run data get entity @a[sort=nearest,limit=1] Pos[2]

execute store result storage thunderball_vector x float 0.01 run scoreboard players operation @a[sort=nearest,limit=1] dragontarget_x -= @s dragon_x
execute store result storage thunderball_vector y float 0.01 run scoreboard players operation @a[sort=nearest,limit=1] dragontarget_y -= @s dragon_y
execute store result storage thunderball_vector z float 0.01 run scoreboard players operation @a[sort=nearest,limit=1] dragontarget_z -= @s dragon_z


summon fireball ^ ^ ^5 {Tags:["thunderball"],ExplosionPower:6b}

data modify entity @e[tag=thunderball,sort=nearest,limit=1] Motion[0] set from storage minecraft:thunderball_vector x
data modify entity @e[tag=thunderball,sort=nearest,limit=1] Motion[1] set from storage minecraft:thunderball_vector y
data modify entity @e[tag=thunderball,sort=nearest,limit=1] Motion[2] set from storage minecraft:thunderball_vector z