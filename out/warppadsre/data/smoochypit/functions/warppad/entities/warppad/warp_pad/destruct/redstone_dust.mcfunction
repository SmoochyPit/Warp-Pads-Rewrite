summon minecraft:item ~ ~ ~ {Tags:["wp.redstonedrop"],Item:{id:"minecraft:redstone",Count:1b},PickupDelay:25s}
execute store result entity @e[tag=wp.redstonedrop,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get @s wp.freq
