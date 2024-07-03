# player gets tp-ed into the nether portal with the full hitbox, so this can detect when they have returned from the nether trip
execute as @a at @s if dimension overworld unless block ~ ~ ~ nether_portal unless block ~0.301 ~ ~ nether_portal unless block ~ ~ ~0.301 nether_portal unless block ~-0.301 ~ ~ nether_portal unless block ~ ~ ~-0.301 nether_portal unless block ~ ~1.801 ~ nether_portal unless block ~ ~1.501 ~ nether_portal unless block ~ ~0.601 ~ nether_portal if entity @s[advancements={anp:enter_np_without_tag=true}] run advancement revoke @s only anp:enter_np_without_tag

# enable vanilla nether portal behaviour for the player
scoreboard players enable @a vanilla_nether_portals_for_you
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run function anp:vanilla_np
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run function anp:vanilla_np_tell
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run scoreboard players reset @s vanilla_nether_portals_for_you

# make a way back through for players stuck in a bad spawn
execute as @e[type=area_effect_cloud,tag=anp_player_pos,nbt={Age:200}] at @s run function anp:safe2 with entity @s
