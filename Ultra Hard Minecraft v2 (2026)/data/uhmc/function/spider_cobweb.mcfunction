summon snowball ~ ~2 ~ {Tags:["spider_cobweb"]}

execute store result score @a[sort=nearest,limit=1] spidertarget_x run data get entity @a[sort=nearest,limit=1] Pos[0]
execute store result score @a[sort=nearest,limit=1] spidertarget_y run data get entity @a[sort=nearest,limit=1] Pos[1]
execute store result score @a[sort=nearest,limit=1] spidertarget_z run data get entity @a[sort=nearest,limit=1] Pos[2]

execute store result score @s spider_x run data get entity @s Pos[0]
execute store result score @s spider_y run data get entity @s Pos[1]
execute store result score @s spider_z run data get entity @s Pos[2]

execute store result storage spidercobwebvector x float 0.15 run scoreboard players operation @a[sort=nearest,limit=1] spidertarget_x -= @s spider_x
execute store result storage spidercobwebvector y float 0.15 run scoreboard players operation @a[sort=nearest,limit=1] spidertarget_y -= @s spider_y
execute store result storage spidercobwebvector z float 0.15 run scoreboard players operation @a[sort=nearest,limit=1] spidertarget_z -= @s spider_z

data modify entity @e[tag=spider_cobweb,sort=nearest,limit=1] Motion[0] set from storage minecraft:spidercobwebvector x
data modify entity @e[tag=spider_cobweb,sort=nearest,limit=1] Motion[1] set from storage minecraft:spidercobwebvector y
data modify entity @e[tag=spider_cobweb,sort=nearest,limit=1] Motion[2] set from storage minecraft:spidercobwebvector z