execute if block ~ ~ ~ nether_portal run return run function anp:to_nether2/clean
execute if predicate anp:nether_check at @s run return run function anp:to_nether2/4 with storage anp:nether_portal_pos
execute positioned ~ ~-1 ~ run function anp:to_nether2/3_nether_roof
