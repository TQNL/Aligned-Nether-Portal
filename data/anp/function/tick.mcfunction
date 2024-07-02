execute as @a at @s if dimension overworld unless block ~ ~ ~ nether_portal if entity @s[tag=anp_in_nether_portal] run tag @s remove anp_in_nether_portal
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!vanilla_np] at @s if dimension overworld if block ~ ~ ~ nether_portal unless entity @s[tag=anp_in_nether_portal] run function anp:to_nether/1

# implement netherroof compatability? no

# enable vanilla nether portal behaviour for the player
scoreboard players enable @a vanilla_nether_portals_for_you
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run function anp:vanilla_np
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run function anp:vanilla_np_tell
execute as @a[scores={vanilla_nether_portals_for_you=1..}] run scoreboard players reset @s vanilla_nether_portals_for_you
