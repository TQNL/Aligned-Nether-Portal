# make sure there is no funny position, and correctly position
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal run return run function anp:to_nether2/0-25
execute positioned ~ ~1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal run return run function anp:to_nether2/0-25
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ nether_portal run function anp:to_nether2/0-25
# dont revoke the advancement here, replaces 'anp_in_nether_portal' tag
