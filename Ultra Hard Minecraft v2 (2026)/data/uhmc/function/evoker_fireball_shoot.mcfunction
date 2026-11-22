kill @e[tag=evoker_fireball]
summon fireball ~ ~3 ~ {Tags:["evoker_fireball"], ExplosionPower:3b, acceleration_power:0.2}

execute store result score @a[sort=nearest,limit=1] evoker_targetX run data get entity @a[sort=nearest,limit=1] Pos[0]
execute store result score @a[sort=nearest,limit=1] evoker_targetY run data get entity @a[sort=nearest,limit=1] Pos[1]
execute store result score @a[sort=nearest,limit=1] evoker_targetZ run data get entity @a[sort=nearest,limit=1] Pos[2]

execute store result score @e[tag=evoker_fireball,limit=1,sort=nearest] evokerX run data get entity @e[tag=evoker_fireball,limit=1,sort=nearest] Pos[0]
execute store result score @e[tag=evoker_fireball,limit=1,sort=nearest] evokerY run data get entity @e[tag=evoker_fireball,limit=1,sort=nearest] Pos[1]
execute store result score @e[tag=evoker_fireball,limit=1,sort=nearest] evokerZ run data get entity @e[tag=evoker_fireball,limit=1,sort=nearest] Pos[2]

execute store result entity @e[tag=evoker_fireball,limit=1,sort=nearest] Motion[0] double 0.01 run scoreboard players operation @a[sort=nearest,limit=1] evoker_targetX -= @e[tag=evoker_fireball,limit=1,sort=nearest] evokerX
execute store result entity @e[tag=evoker_fireball,limit=1,sort=nearest] Motion[1] double 0.01 run scoreboard players operation @a[sort=nearest,limit=1] evoker_targetY -= @e[tag=evoker_fireball,limit=1,sort=nearest] evokerY
execute store result entity @e[tag=evoker_fireball,limit=1,sort=nearest] Motion[2] double 0.01 run scoreboard players operation @a[sort=nearest,limit=1] evoker_targetZ -= @e[tag=evoker_fireball,limit=1,sort=nearest] evokerZ