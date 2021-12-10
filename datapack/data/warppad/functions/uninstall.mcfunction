scoreboard objectives remove wp.spawn_anim
scoreboard objectives remove wp.math
scoreboard objectives remove wp.x
scoreboard objectives remove wp.z
scoreboard objectives remove wp.linked_UUID
scoreboard objectives remove wp.frequency
scoreboard objectives remove wp.spamcount
scoreboard objectives remove wp.x_off
scoreboard objectives remove wp.z_off
scoreboard objectives remove wp.temp_ID
scoreboard objectives remove wp.pass_count
scoreboard objectives remove wp.player_launch
scoreboard objectives remove wp.cooldown
tag @a remove wp.maker
tag @a remove wp.mod_thrower
tag @a remove wp.pilot

tellraw @a {"text":"Warp Pads has been uninstalled. Be sure to remove it from the datapacks folder or disable it with \"/datapack disable\" before reloading the world.","color":"gold"}
tellraw @a {"text":"To restore behavior to existing warp pads later, reload and run \"/function warppad:reinstall\".","color":"gold"}