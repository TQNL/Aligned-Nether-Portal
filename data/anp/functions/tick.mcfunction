execute as @a at @s if dimension overworld unless block ~ ~ ~ nether_portal if entity @s[tag=anp_in_nether_portal] run tag @s remove anp_in_nether_portal
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if dimension overworld if block ~ ~ ~ nether_portal unless entity @s[tag=anp_in_nether_portal] run function anp:to_nether/1

# implement netherroof compatability
