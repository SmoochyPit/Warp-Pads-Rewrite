particle minecraft:witch ~ ~-1 ~ 0 0 0 0.5 25
forceload remove ~ ~
execute unless score @s wp.freq matches 0 positioned ~ ~-1 ~ run function smoochypit:warppad/entities/warppad/warp_pad/destruct/redstone_dust
execute as @s run function smoochypit:warppad/entities/warppad/tdn_dispatch_event_base_items
execute unless score @s wp.playerUUID matches 0 positioned ~ ~-1 ~ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b},PickupDelay:25s}
