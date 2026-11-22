execute as @e[type=cave_spider,tag=!hpset] run attribute @s max_health base set 32
execute as @e[type=cave_spider,tag=!hpset] run data modify entity @s Health set value 32
execute as @e[type=cave_spider,tag=!hpset] run tag @s add hpset
execute as @e[type=cave_spider] run attribute @s follow_range base set 128

execute as @e[type=cave_spider] run scoreboard players add @s spider_cobweb_cooldown 1
execute as @e[type=cave_spider] if score @s spider_cobweb_cooldown matches 100 run execute if predicate uhmc:targeted_by_cave_spider at @s run function uhmc:spider_cobweb
execute as @e[type=cave_spider] if score @s spider_cobweb_cooldown matches 100 run scoreboard players set @s spider_cobweb_cooldown 0

execute at @e[tag=spider_cobweb] run kill @e[tag=spider_cobweb_effect,distance=..10]
execute at @e[tag=spider_cobweb] run summon interaction ~ ~ ~ {Tags:["spider_cobweb_effect"]}

execute as @e[tag=spider_cobweb_effect] run scoreboard players add @s spider_cobweb_cooldown 1
execute as @e[tag=spider_cobweb_effect] if score @s spider_cobweb_cooldown matches 2 at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 cobweb replace air
execute as @e[tag=spider_cobweb_effect] if score @s spider_cobweb_cooldown matches 2.. run kill @s
